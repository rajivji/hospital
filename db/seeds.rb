# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless User.find_by_email('superadmin@example.com')
	User.create({email: "superadmin@example.com", password: "password", password_confirmation: "password"})
end
unless AdminUser.find_by_email('admin@example.com')
	AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 
end