# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times  do
	Article.create({
		title: Faker::Book.title,
		body: Faker::Lorem.sentence
	})
end

2.times do 
	Customer.create({
		name: Faker::Name.name,
		email: Faker::Internet.email,
		phone: Faker::PhoneNumber.cell_phone,
		cpf_cnpj: Faker::Code.npi
	})
end

2.times do 
	Employee.create({
		name: Faker::Name.name,
		email: Faker::Internet.email,
		phone: Faker::PhoneNumber.cell_phone,
		function: Faker::Subscription.status
	})
end

2.times do
	Demand.create({
		description: Faker::Subscription.status,
		observation: Faker::Subscription.status,
		value: Faker::Number.decimal(l_digits: 2),
		date_start: Faker::Date.in_date_period,
		date_end: Faker::Date.in_date_period,
	})
end

2.times do
	Call.create({
		activity: Faker::Subscription.status,
		name: Faker::Name.name,
		phone: Faker::PhoneNumber.cell_phone,
		value: Faker::Number.decimal(l_digits: 2),
		value_displacement: Faker::Number.decimal(l_digits: 2),
		city: Faker::Address.city,
		cep: Faker::Address.zip_code,
		street: Faker::Address.street_name,
		number: Faker::Address.building_number,
		neighborhood: Faker::Address.community,
		start_date: Faker::Date.in_date_period,
		deadline: Faker::Number.number(digits: 2)
		})
end