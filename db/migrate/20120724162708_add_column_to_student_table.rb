class AddColumnToStudentTable < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :mobile, :string
    
  end
end
