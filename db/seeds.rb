# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require 'date'
require "faker"

Booking.destroy_all
Car.destroy_all
User.destroy_all

user1 = User.new(first_name: "Silvia", last_name: "Pasini", email: "silvia@silvia.com", password: "xxxxxxxx")
user1.save!

user2 = User.new(first_name: "Olivier", last_name: "Barthelemy", email: "olivier@olivier.com", password: "xxxxxxxx")
user2.save!

user3 = User.new(first_name: "Alice", last_name: "Daubrée", email: "alice@alice.com", password: "xxxxxxxx")
user3.save!

user4 = User.new(first_name: "Bastien", last_name: "Perez Assael", email: "bastien@bastien.com", password: "xxxxxxxx")
user4.save!

car1 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "300m Prom. des Anglais, 06200 Nice",
  price_per_day: 15,
  places: 4,
  km: 30_000,
  air_conditioning: false,
  user_id: user4.id,
)
photo_car1 = URI.open("https://cdn-s-www.leprogres.fr/images/BA6F242B-94B2-4596-9634-87ACB7A05C2E/NW_raw/la-kia-ev6-elue-car-of-the-year-2022-photo-kia-1646066749.jpg")
car1.photos.attach(io: photo_car1, filename: "car1.jpg", content_type: "image/jpg")
car1.save

car2 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "9 avenue Henri Matisse, 06200 Nice",
  price_per_day: 17.5,
  places: 5,
  km: 40_000,
  air_conditioning: true,
  user_id: user4.id,
)
  photo_car2 = URI.open("https://www.autoplanet.fr/wp-content/uploads/2019/06/mandataire-fiat-1140x760.jpg")
  car2.photos.attach(io: photo_car2, filename: "car2.jpg", content_type: "image/jpg")
  car2.save

car3 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "18 Rue Maréchal Vauban, 06300 Nice",
  price_per_day: 20,
  places: 5,
  km: 35_000,
  air_conditioning: false,
  user_id: user4.id,
)
  photo_car3 = URI.open("https://cdn.motor1.com/images/mgl/Bqv64/s1/fiat-panda-2020.jpg")
  car3.photos.attach(io: photo_car3, filename: "car3.jpg", content_type: "image/jpg")
  car3.save


car4 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "190 Bd Napoléon III, 06200 Nice",
  price_per_day: 10,
  places: 4,
  km: 80_000,
  air_conditioning: false,
  user_id: user4.id,
)
  photo_car4 = URI.open("https://cars.usnews.com/pics/size/390x290/images/Auto/izmo/i159614825/2022_honda_accord_sedan_angularfront.jpg")
  car4.photos.attach(io: photo_car4, filename: "car4.jpg", content_type: "image/jpg")
  car4.save

car5 = Car.new(
name: Faker::Vehicle.make_and_model,
description: Faker::Lorem.paragraph(sentence_count: 10),
location: "5 Pl. Saint-Pierre, 06800 Cagnes-sur-Mer",
price_per_day: 11.5,
places: 4,
km: 20_000,
air_conditioning: true,
user_id: user4.id, )

 photo_car5 = URI.open("https://www.fiat.fr/content/dam/cps/fiat/fr-fr/Promotions/500-hybrid/345x175.jpg")
 car5.photos.attach(io: photo_car5, filename: "car5.jpg", content_type: "image/jpg")
 car5.save

car6 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "8 Av. Raoul Dufy, 06200 Nice",
  price_per_day: 12,
  places: 4,
  km: 30_000,
  air_conditioning: false,
  user_id: user4.id,
)
  photo_car6 = URI.open("https://cdn.motor1.com/images/mgl/Bqv64/s1/fiat-panda-2020.jpg")
  car6.photos.attach(io: photo_car6, filename: "car6.jpg", content_type: "image/jpg")
  car6.save

car7 = Car.new(
    name: Faker::Vehicle.make_and_model,
    description: Faker::Lorem.paragraph(sentence_count: 10),
    location: "1 Rue Jean-Henri Fabre, 06100 Nice",
    price_per_day: 17.5,
    places: 4,
    km: 90_000,
    air_conditioning: true,
    user_id: user4.id,
)
    photo_car7 = URI.open("https://www.automobile-magazine.fr/asset/cms/176668/config/125409/opel-crossland.jpg")
    car7.photos.attach(io: photo_car7, filename: "car7.jpg", content_type: "image/jpg")
    car7.save

car8 = Car.new(
  name: Faker::Vehicle.make_and_model,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  location: "3 Chem. de la Colline Saint-Joseph, 13009 Marseille",
  price_per_day: 10,
  places: 4,
  km: 30_000,
  air_conditioning: false,
  user_id: user4.id,
)
  photo_car8 = URI.open("https://www.auto-data.net/images/f32/Opel-Corsa-C.jpg")
  car8.photos.attach(io: photo_car8, filename: "car1.jpg", content_type: "image/jpg")
  car8.save
