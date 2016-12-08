module HomeHelper
  def check_slot(day, timeslot, selected_courses)
    selected_courses.each do |sc|
      if sc.slots.day == day && sc.slots.start_time == timeslot && sc.slots.end_time == timeslot
        return true
      end
    end
  end
end
