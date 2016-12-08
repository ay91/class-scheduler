class AddCourseIdToSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :slots, :course_id, :integer
  end
end
