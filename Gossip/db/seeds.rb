# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
	City.create(name: Faker::Address.city, postal_code: Faker::Address.building_number.to_i)
end

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Job.title, email: Faker::Internet.email, age: rand(20..50), city_id: rand(1..10))
end

10.times do 
	Gossipe.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, date: Time.now, user_id: rand(1..10))
end

10.times do 
	Tag.create(title: Faker::Book.genre)
end

10.times do |i|
	a = Gossipe.find(rand(1..10))
	b = Tag.find(i+1)
	a.tags << b
end

9.times do |i|
	s = User.find(i+1)
	r = User.find(i+2)
	pm = PrivateMessage.new
	pm.content = Faker::Lorem.paragraph
	pm.date = Time.now
	pm.sender = s
	pm.recipient = r
	pm.save
end

