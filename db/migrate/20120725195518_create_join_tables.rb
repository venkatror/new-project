class CreateJoinTables < ActiveRecord::Migration
  def up
    create_table :students_timeslots, :id=> false do |t|
      t.integer :student_id
      t.integer :timeslot_id
    end
    create_table :courses_students, :id=> false do |t|
      t.integer :student_id
      t.integer :timeslot_id
    end
  end

  def down
    drop table :students_timeslots
    drop table :courses_students
  end
end
