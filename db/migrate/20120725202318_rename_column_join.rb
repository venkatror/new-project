class RenameColumnJoin < ActiveRecord::Migration
  def up
    rename_column :courses_students, :timeslot_id, :course_id
  end

  def down
    rename_column :courses_students,  :course_id,:timeslot_id
  end
end
