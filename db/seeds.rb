# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts "Cleaning database..."

Customer.destroy_all
CustomerList.all
Island.destroy_all
ServiceProvider.all
Specialty.destroy_all

puts "cleaning done"


puts 'Creating 4 islands...'

islands_name = [
  {
    name: "Ngazidja"
  },

  {
    name: "Moheli"
  },

  {
    name: "Anjouan"
  },

  {
    name: "Mayotte"
  }
]

islands_name.each do |island|
  island = Island.new(island)
  island.save!
end

puts "islands created"


puts "4 specialties"

4.times do
  specialty = Specialty.new(
    job_name: Faker::Job.title,
    price: Faker::Number.between(from: 10, to: 100),
    )
  specialty.save!
end
puts "4 specialties created !"


puts "4 service providers"
4.times do
  service_provider = ServiceProvider.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty_id: 1,
    island_id: 1
    )
  service_provider.save!
end

puts 'Creating 10 fake customers'
10.times do
  customer = Customer.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    island_id: 1
  )
  customer.save!
end

puts "10 customers created !"

puts "4 customer_lists"
4.times do
  customer_list = CustomerList.new(
    service_provider_id: 1,
    customer_id: 1
  )
  customer_list.save!
end

puts "4 customer lists created !"


puts 'finished!'
