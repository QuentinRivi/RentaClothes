# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users'
manue = User.create(first_name: 'Pierre', last_name: "Kiroul", address: "Lyon", email: "pierrot@gmail.com", password: "azerty")
quentin = User.create(first_name: 'Louis', last_name: "Labrocante", address: "Paris", email: "louis@gmail.com", password: "azerty")
arthur = User.create(first_name: 'Arthur', last_name: "john", address: "Marseille", email: "arthur@gmail.com", password: "azerty")
puts "done"

puts "Creating Clothes"
tee_shirt = Clothe.create(name: 'Tee-shirt', size: "XXL", brand: "Lafuma", state: "4", owner_id: manue.id)
tee_shirt.photo.attach(io: File.open('./app/assets/images/tee-shirt.jpg'), filename: 'tee-shirt.jpg')
tee_shirt.save!
pull = Clothe.create(name: 'Pull', size: "XS", brand: "Sergio", state: "2", owner_id: quentin.id)
pull.photo.attach(io: File.open('./app/assets/images/pull.jpg'), filename: 'pull.jpg')
pull.save!
chaussure = Clothe.create(name: 'Chaussure', size: "32", brand: "Lacoste", state: "5", owner_id: arthur.id)
chaussure.photo.attach(io: File.open('./app/assets/images/chaussure.jpg'), filename: 'chaussure.jpg')
p chaussure.save!
puts "done"

puts "Creating Rentals"
rental1 = Rental.create(renter_id: manue.id, clothe_id: chaussure.id)
rental2 = Rental.create(renter_id: quentin.id, clothe_id: chaussure.id)
rantal3 = Rental.create(renter_id: arthur.id, clothe_id: tee_shirt.id)
puts "done"

puts "Creating Notifications"
notif1 = Notification.create(rental: rental1, receiver: arthur )
puts "done"

