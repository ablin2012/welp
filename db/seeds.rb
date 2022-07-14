# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Businesses
# Business.create!(
#     name:,
#     category:,
#     address:,
#     city:,
#     state:,
#     zip_code:,
#     lat:,
#     lng:,
#     phone:,
#     hours:,
#     price:,
#     website:,
# )

# b1.photos.attach(io: URI.open(''), filename: '')

User.destroy_all
Business.destroy_all
require 'open-uri'

b1 = Business.create!(
    name: 'Chubby Noodle',
    category: 'Asian Fusion',
    address: '570 Green St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.799736,
    lng: -122.408554,
    phone: '(415) 296-9600',
    hours:'5:00 PM - 10:00 PM',
    price: '$$',
    website: 'http://www.chubbynoodle.com'
)
b1.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/chubby_noodle_main.jpeg'), 
    filename: 'chubby_noodle_main.jpeg'
)

b2 = Business.create!(
    name: 'Trader Joe\'s',
    category: 'Grocery',
    address: '401 Bay St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.805486,
    lng: -122.413771,
    phone: '(415) 351-1013',
    hours: '8:00 AM - 9:00 PM',
    price: '$$',
    website: 'https://www.traderjoes.com'
)
b2.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/trader_joes_main.jpeg'),
    filename: 'trader_joes_main.jpeg'
)

b3 = Business.create!(
    name: 'Buster\'s Cheesesteak',
    category: 'American',
    address: '366 Columbus Ave',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.798586,
    lng: -122.407438,
    phone: '(415) 392-2800',
    hours: '11:00 AM - 3:00 AM',
    price: '$$',
    website: 'https://busterscheesesteaksanfrancisco.bestcafes.online/'
)
b3.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/busters_cheesesteak_main.jpeg'),
    filename: 'busters_cheesesteak_main.jpeg'
)

b4 = Business.create!(
    name: 'Wong Lee Bakery',
    category: 'Bakery',
    address: '732 Jackson St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.796038,
    lng: -122.407299,
    phone: '(415) 986-3759',
    hours: '7:00 AM - 7:00 PM',
    price: '$'
)
b4.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/wong_lee_bakery_main.jpeg'),
    filename: 'wong_lee_bakery_main.jpeg'
)

b5 = Business.create!(
    name: 'Tancca',
    category: 'Bubble Tea',
    address: '776 Broadway',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.797662,
    lng: -122.409914,
    phone: '(415) 986-2387',
    hours: '12:00 PM - 8:00 PM',
    price: '$'
)
b5.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tancca_main.jpeg'),
    filename: 'tancca_main.jpeg'
)

b6 = Business.create!(
    name: 'Teaspoon',
    category: 'Bubble Tea',
    address: '2125 Polk St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94109',
    lat: 37.796310,
    lng: -122.422030,
    phone: '(415) 872-9245',
    hours: '11:00 AM - 9:00 PM',
    price: '$$',
    website: 'https://www.teaspoonlife.com/',
)
b6.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/teaspoon_main.jpeg'),
    filename: 'teaspoon_main.jpeg'
)

u1 = User.create!(
    first_name: 'Guest',
    last_name: 'User',
    email: 'guest@email.com',
    password: '123456'
)

u2 = User.create!(
    first_name: 'Aang',
    last_name: 'Avatar',
    email: 'aang@email.com',
    password: '123456'
)

u3 = User.create!(
    first_name: 'Katara',
    last_name: 'Waterbender',
    email: 'katara@email.com',
    password: '123456'
)

u4 = User.create!(
    first_name: 'Zuko',
    last_name: 'Firelord',
    email: 'zuko@email.com',
    password: '123456'
)

u5 = User.create!(
    first_name: 'Toph',
    last_name: 'Beifong',
    email: 'toph@email.com',
    password: '123456'
)

u6 = User.create!(
    first_name: 'Sokka',
    last_name: 'Boomerang',
    email: 'sokka@email.com',
    password: '123456'
)

r1 = Review.create!(
    rating: 4,
    body: 'When they say that they are the best Cheesesteak, they really mean it. I\'d give 5 stars, but the cheesesteaks weren\'t photogenic enough for my foodstagram',
    user_id: u3.id,
    business_id: b3.id,
)

r2 = Review.create!(
    rating: 2,
    body: 'The lines are way too long and everything is too organic. Sometimes you just want some Totino\'s pizza rolls',
    user_id: u6.id,
    business_id: b2.id,
)

r3 = Review.create!(
    rating: 4,
    body: 'The boba is really good. Might be my favorite spot in SF, but the service is a little slow',
    user_id: u2.id,
    business_id: b5.id,
)

r4 = Review.create!(
    rating: 1,
    body: 'I prefer hot drinks and their selection of hot drinks is less that average',
    user_id: u4.id,
    business_id: b6.id,
)

r5 = Review.create!(
    rating: 5,
    body: 'I stuffed my face full of food here. The selection is amazing and the flavors are out of this world',
    user_id: u5.id,
    business_id: b4.id,
)

r6 = Review.create!(
    rating: 3,
    body: 'The food was good, but I wish they had a larger selection for vegetarians',
    user_id: u2.id,
    business_id: b4.id,
)

r7 = Review.create!(
    rating: 4,
    body: 'The food is fantastic, but the prices are a bit high for the portions',
    user_id: u4.id,
    business_id: b1.id,
)

r8 = Review.create!(
    rating: 4,
    body: 'AMAZING cheesesteak, but I want them to be BIGGER',
    user_id: u6.id,
    business_id: b3.id,
)