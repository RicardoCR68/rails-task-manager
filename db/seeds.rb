# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Started a new Seed'

10.times do
  new_task = Task.new(title: [Faker::Relationship.familial, Faker::Name.first_name, Faker::Games::Pokemon.name].sample,
                      details: Faker::Lorem.sentence(7))
  new_task.completed = false
  puts 'New Task Added!'
  new_task.save
end

puts "Ended. Now you have #{Task.count} Tasks!"
