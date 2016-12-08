class CourseController < ApplicationController
  before_action :selected_courses

  def show
    if @selected_courses
      courses = JSON.parse(@selected_courses)
    end
  end

  course = Course.find(params[:id])

  def add_course
    course = Course.find_by(id: params[:id])
    if !@selected_courses
      @selected_courses << course
    else
      if @selected_courses.include?(course)
        flash[:danger] = "#{course.name} has already been selected"
      else
        @selected_courses.each do |selected_course|
            @conflicts[selected_course.id] = find_conflicts(course, selected_course)? find_conflicts(course, selected_course) : nil
        end
      end

      if @conflicts
        flash[:danger] = "your selected course conflicts with #{@conflicts.key}"
      else
        @selected_courses << params[:id]
      end
    end
      cookies[:course_ids] = JSON.generate(@courses)
  end

  def mandatory_course
    mandatory_course = []
    mandatory_course_1 = Course.find_by(name: 'Bahasa Malaysia 200: Bahasa Jiwa Bangsa')
    mandatory_course_2 = Course.find_by(name: 'Computer Science 215: Software Engineering I')
    mandatory_course << mandatory_course_1 << mandatory_course_2
  end

  def find_conflicts(course1, course2)
    conflicting_slots = []
    if course1.slots.day == course2.slots.day
      && ((course2.slots.start_time < course1.slots.start_time && course2.slots.end_time > course1.slots.end_time)
      ||  (course2.slots.start_time > course1.slots.start_time && course2.slots.start_time < course1.slots.end_time)
      ||  (course2.slots.end_time > course1.slots.start_time && course2.slots.end_time < course1.slots.end_time))
      conflicting_slots << course1.slots << course2.slots
    end
  end

  private

  def selected_course
    selected_course_ids = JSON.parse(cookies[:course_ids])
    @selected_courses = selected_course_ids.map {|id| Course.find_by(id: id)}
  end
end
