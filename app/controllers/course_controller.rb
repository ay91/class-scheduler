class CourseController < ApplicationController
  before_action :selected_courses

  def show
    if @selected_courses
      courses = JSON.parse(@selected_courses)
    end
  end

  def add_lesson
    if !@selected_courses
      course = Course.find(params[:id])
      timeslot = []
      course.slots.each {|slot| timeslot += [slot.day, slot.start_time, slot.end_time]}

      @courses = timeslot


   else
      @courses = JSON.parse(@selected_courses)
      mandatory_course
      course = Course.find_by(id: params[:id])

      if mandatory_course.include?(course)
        # raise exception
      else
        @courses << params[:id]
      end
   end
      cookies[:courses] = JSON.generate(@courses)
  end

  def mandatory_course
    mandatory_course = []
    mandatory_course_1 = Course.find_by(name: 'Bahasa Malaysia 200: Bahasa Jiwa Bangsa')
    mandatory_course_2 = Course.find_by(name: 'Computer Science 215: Software Engineering I')
    mandatory_course << mandatory_course_1 << mandatory_course_2
  end

  private

  def selected_course
    @selected_courses = cookies[:course]
  end
end
