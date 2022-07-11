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
User.destroy_all
Business.destroy_all

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

u1 = User.create!(
    first_name: 'Guest',
    last_name: 'User',
    email: 'guest@email.com',
    password: '123456'
)