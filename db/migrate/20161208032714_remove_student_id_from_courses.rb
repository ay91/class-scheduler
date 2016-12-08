class RemoveStudentIdFromCourses < ActiveRecord::Migration[5.0]
  def up
    remove_column :courses, :student_id
  end

  def down
    add_column :courses, :student_id, :integer
  end
end
