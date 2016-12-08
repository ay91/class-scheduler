class AddCompletedToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :completed, :boolean
  end
end
