class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|

      t.string :info
    end
  end
end
