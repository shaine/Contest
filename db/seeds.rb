# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create(:username => 'test@test.com', :password => 'test', :password_confirmation => 'test', :first_name => 'Shaine', :last_name => 'Hatch', :url => 'shatch', :gender => 'male', :agent => 'Jon Greene', :manager => 'Jason Skollingsberg', :high_school => 'Cyprus High', :home_town => 'Magna, UT')

