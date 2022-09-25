# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'date'
require "faker"
require "open-uri"


Booking.destroy_all
Car.destroy_all
User.destroy_all


user_silvia = User.new(first_name: "Silvia", last_name: "Pasini", email: "silvia@silvia.com", password: "password")
user_silvia.save!


user_olivier = User.new(first_name: "Olivier", last_name: "Barthelemy", email: "olivier@olivier.com", password: "password")
user_olivier.save!

user_alice = User.new(first_name: "Alice", last_name: "Daubrée", email: "alice@alice.com", password: "xxxxxxxx")
user_alice.save!

user_evan = User.new(first_name: "Evan", last_name: "Abaella", email: "evan@evan.com", password: "xxxxxxxx")
user_evan.save!

car1 = Car.new(
  name: "Kia ev6",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "300m Prom. des Anglais, 06200 Nice",
  price_per_day: 55,
  places: 5,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_olivier.id,
)
photo_car1 = URI.open("https://cdn-s-www.leprogres.fr/images/BA6F242B-94B2-4596-9634-87ACB7A05C2E/NW_raw/la-kia-ev6-elue-car-of-the-year-2022-photo-kia-1646066749.jpg")
car1.photos.attach(io: photo_car1, filename: "car1.jpg", content_type: "image/jpg")
car1.save


car2 = Car.new(
  name: "Fiat 500",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_day: 30,
  places: 3,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_evan.id,
)
  photo_car2 = URI.open("https://www.autoplanet.fr/wp-content/uploads/2019/06/mandataire-fiat-1140x760.jpg")
  car2.photos.attach(io: photo_car2, filename: "car2.jpg", content_type: "image/jpg")
  car2.save


car3 = Car.new(
  name: "Fiat Panda",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "18 Rue Maréchal Vauban, 06300 Nice",
  price_per_day: 20.7,
  places: 4,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_alice.id,
)
  photo_car3 = URI.open("https://cdn.motor1.com/images/mgl/Bqv64/s1/fiat-panda-2020.jpg")
  car3.photos.attach(io: photo_car3, filename: "car3.jpg", content_type: "image/jpg")
  car3.save!


car4 = Car.new(
  name: "Honda Accord",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "190 Bd Napoléon III, 06200 Nice",
  price_per_day: 80,
  places: 4,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_olivier.id,
)
photo_car4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/27/Honda_Accord_%28CV3%29_EX_eHEV%2C_2021%2C_front.jpg")
car4.photos.attach(io: photo_car4, filename: "car4.jpg", content_type: "image/jpg")
car4.save!


car5 = Car.new(
  name: "Fiat 500 Abart",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "5 Pl. Saint-Pierre, 06800 Cagnes-sur-Mer",
  price_per_day: 33.6,
  places: 4,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_evan.id,
)

 photo_car5 = URI.open("https://www.fiat.fr/content/dam/cps/fiat/fr-fr/Promotions/500-hybrid/345x175.jpg")
 car5.photos.attach(io: photo_car5, filename: "car5.jpg", content_type: "image/jpg")
 car5.save


car6 = Car.new(
  name: "Fiat Panda",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "8 Av. Raoul Dufy, 06200 Nice",
  price_per_day: 17.5,
  places: 4,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_alice.id,
)
  photo_car6 = URI.open("https://cdn.motor1.com/images/mgl/Bqv64/s1/fiat-panda-2020.jpg")
  car6.photos.attach(io: photo_car6, filename: "car6.jpg", content_type: "image/jpg")
  car6.save


car7 = Car.new(
  name: "Opel Crossland",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "1 Rue Jean-Henri Fabre, 06100 Nice",
  price_per_day: 65,
  places: 5,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_evan.id,
)
  photo_car7 = URI.open("https://www.automobile-magazine.fr/asset/cms/176668/config/125409/opel-crossland.jpg")
  car7.photos.attach(io: photo_car7, filename: "car7.jpg", content_type: "image/jpg")
  car7.save!


car8 = Car.new(
  name: "Opel Corsa C",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "3 Chem. de la Colline Saint-Joseph, 13009 Marseille",
  price_per_day: 10,
  places: 5,
  license_plate: Faker::Vehicle.license_plate,
  km: Faker::Vehicle.kilometrage,
  fuel_tipe: "oil",
  year: Faker::Vehicle.year,
  user_id: user_silvia.id,
)
  photo_car8 = URI.open("https://www.auto-data.net/images/f32/Opel-Corsa-C.jpg")
  car8.photos.attach(io: photo_car8, filename: "car8.jpg", content_type: "image/jpg")
  car8.save


booking1 = Booking.new(
  start_date: Date.today.next_month,
  end_date: Date.today.next_month + 3,
  user_id: user_silvia.id,
  car_id: car8.id,
)
booking1.save!
