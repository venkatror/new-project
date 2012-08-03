class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :house_no
      t.string :city
      t.string :street
      t.string :zipcode
      t.string :addressable_type
      t.integer :addressable_id
    end
  end
end
