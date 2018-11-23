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
manue = User.create(first_name: 'Emmanuelle', last_name: "Nadal", address: "Villeurbanne", email: "manue.nadal@gmail.com", password: "azerty")
manue.avatar.attach(io: File.open('./app/assets/images/manue.jpg'), filename: 'manue.jpg')
quentin = User.create(first_name: 'Quentin', last_name: "Rivière", address: "Croix-rousse", email: "quentin.l.riviere@gmail.com", password: "azerty")
quentin.avatar.attach(io: File.open('./app/assets/images/buddy.JPG'), filename: 'buddy.JPG')
arthur = User.create!(first_name: 'Arthur', last_name: "Delbosco", address: "Venissieux", email: "arthur@gmail.com", password: "azerty")
arthur.avatar.attach(io: File.open('./app/assets/images/arthur.jpg'), filename: 'arthur.jpg')
andde = User.create!(first_name: 'Andde', last_name: "Indaburru", address: "Vieux-lyon", email: "andde@gmail.com", password: "azerty")
arthur.avatar.attach(io: File.open('./app/assets/images/andde.jpg'), filename: 'andde.jpg')
puts "done"

puts "Creating Clothes"
tee_shirt = Clothe.create!(name: 'Tee-shirt', size: "XXL", brand: "Lafuma", state: "4", owner_id: manue.id)
tee_shirt.photo.attach(io: File.open('./app/assets/images/tee-shirt.jpg'), filename: 'tee-shirt.jpg')
pull = Clothe.create!(name: 'Pull', size: "XS", brand: "Sergio", state: "2", owner_id: quentin.id)
pull.photo.attach(io: File.open('./app/assets/images/pull.jpg'), filename: 'pull.jpg')
chaussure = Clothe.create!(name: 'Shoes', size: "32", brand: "Lacoste", state: "5", owner_id: arthur.id)
chaussure.photo.attach(io: File.open('./app/assets/images/chaussure.jpg'), filename: 'chaussure.jpg')
licorne_outfit = Clothe.create!(name: 'licorne', size: "S", brand: "Lacoste", state: "4", owner_id: manue.id)
licorne_outfit.photo.attach(io: File.open('./app/assets/images/licorne.jpg'), filename: 'licorne.jpg')
skirt = Clothe.create!(name: 'Skirt', size: "XXL", brand: "Guess", state: "4", owner_id: manue.id)
skirt.photo.attach(io: File.open('./app/assets/images/skirt.jpg'), filename: 'skirt.jpg')
pants = Clothe.create!(name: 'Pants', size: "XL", brand: "Levis", state: "3", owner_id: quentin.id)
pants.photo.attach(io: File.open('./app/assets/images/pants.jpg'), filename: 'pants.jpg')
tongs = Clothe.create!(name: 'Flip-Flop', size: "M", brand: "Ananas", state: "5", owner_id: arthur.id)
tongs.photo.attach(io: File.open('./app/assets/images/tongs-ananas.jpg'), filename: 'tongs-ananas.jpg')
beret = Clothe.create!(name: 'Beret', size: "S", brand: "Basque", state: "2", owner_id: andde.id)
beret.photo.attach(io: File.open('./app/assets/images/beret.jpg'), filename: 'beret.jpg')
swimsuit = Clothe.create!(name: 'Swimsuit', size: "XXL", brand: "Arena", state: "5", owner_id: andde.id)
swimsuit.photo.attach(io: File.open('./app/assets/images/swimsuit.jpg'), filename: 'swimsuit.jpg')
gardener = Clothe.create!(name: 'Gardener', size: "S", brand: "Leggo", state: "1", owner_id: andde.id)
gardener.photo.attach(io: File.open('./app/assets/images/gardener.jpg'), filename: 'gardener.jpg')
dress = Clothe.create!(name: 'dress', size: "L", brand: "Fruits", state: "2", owner_id: andde.id)
dress.photo.attach(io: File.open('./app/assets/images/dress.jpg'), filename: 'dress.jpg')
pullover = Clothe.create!(name: 'Pull-over', size: "S", brand: "Leggo", state: "1", owner_id: andde.id)
pullover.photo.attach(io: File.open('./app/assets/images/pullover.jpg'), filename: 'pullover.jpg')
puts "done"

puts "Creating Rentals"
rental1 = Rental.create!(renter_id: manue.id, clothe_id: chaussure.id)
rental2 = Rental.create!(renter_id: quentin.id, clothe_id: chaussure.id)
rantal3 = Rental.create!(renter_id: arthur.id, clothe_id: tee_shirt.id)
rental4 = Rental.create!(renter_id: manue.id, clothe_id: licorne_outfit.id)
rental5 = Rental.create!(renter_id: quentin.id, clothe_id: skirt.id)
rantal6 = Rental.create!(renter_id: arthur.id, clothe_id: pants.id)
rental7 = Rental.create!(renter_id: manue.id, clothe_id: tongs.id)
rental8 = Rental.create!(renter_id: quentin.id, clothe_id: beret.id)
rantal9 = Rental.create!(renter_id: andde.id, clothe_id: swimsuit.id)
rental7 = Rental.create!(renter_id: andde.id, clothe_id: gardener.id)
rental8 = Rental.create!(renter_id: quentin.id, clothe_id: dress.id)
rantal9 = Rental.create!(renter_id: andde.id, clothe_id: pullover.id)
puts "done"

puts "Creating Notifications"
notif1 = Notification.create!(rental: rental1, receiver: arthur )
puts "done"

