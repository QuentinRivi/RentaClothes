# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Notification.destroy_all
Rental.destroy_all
Clothe.destroy_all
User.destroy_all

puts 'Creating users'
pierre = User.create(first_name: 'Pierre', last_name: "Kiroul", address: "Lyon", email: "pierrot@gmail.com", password: "azerty")
louis = User.create(first_name: 'Louis', last_name: "Labrocante", address: "Paris", email: "louis@gmail.com", password: "azerty")
arthur = User.create(first_name: 'Arthur', last_name: "john", address: "Marseille", email: "arthur@gmail.com", password: "azerty")
puts "done"

p pierre
p pierre.id

puts "Creating Clothes"
tee_shirt = Clothe.new(name: 'Tee-shirt', size: "XXL", brand: "Lafuma", state: "4", owner_id: pierre.id)
p tee_shirt.save!
pull = Clothe.new(name: 'Pull', size: "XS", brand: "Sergio", state: "2", owner_id: louis.id)
p pull.save!
chaussure = Clothe.new(name: 'Chaussure', size: "32", brand: "Lacoste", state: "5", owner_id: arthur.id)
p chaussure.save!
puts "done"

puts "Creating Rentals"
rental1 = Rental.create(renter_id: pierre.id, clothe_id: chaussure.id)
rental2 = Rental.create(renter_id: louis.id, clothe_id: chaussure.id)
rantal3 = Rental.create(renter_id: arthur.id, clothe_id: tee_shirt.id)
puts "done"

puts "Creating Notifications"
notif1 = Notification.create(rental: rental1, receiver: arthur )
puts "done"

