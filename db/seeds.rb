# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(:name=> "ruby")
Course.create(:name=> "selinium")
Course.create(:name=> "ruby on rails")
Course.create(:name=> "amdroid")
Course.create(:name=> "php")
Timeslot.create(:info=>"08:00 to 09:00")
Timeslot.create(:info=>"09:00 to 10:00")
Timeslot.create(:info=>"10:00 to 11:00")
Timeslot.create(:info=>"15:00 to 16:00")
Student.create(:email=>'admin@me.com',:password=>"123456789")