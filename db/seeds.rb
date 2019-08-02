# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

array_city = ["Reims", "Marseille", "Lyon", "Monaco", "Besançon", "Lille", "Strasbourg", "Calais"]
dog = []
dogsitter = []
array_city.length.times do |i|
	array_city[i]= City.create(nom: array_city[i])
end

60.times do |i|
   dog[i] = Dog.create!(dog_name: Faker::FunnyName.name, city_id: array_city[rand(7)].id)
    #puts "dog #{i}" 
end

90.times do |i|
	dogsitter[i] = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: array_city[rand(7)].id)
    #puts "dogsitter #{i}" 
end

110.times do |i|
	stroll = Stroll.create!(date_stroll: Faker::Time.forward(days: 28, period: :day),dogsitter: dogsitter[rand(90)], dog: dog[rand(60)])
    #puts "stroll #{i}" 
end