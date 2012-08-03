class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|

      t.string :info
    end
  end
end
