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
    category: 'Bakeries',
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

b7 = Business.create!(
    name: 'Love Tea',
    category: 'Bubble Tea',
    address: '601 Broadway',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.797490,
    lng: -122.407240,
    phone: '(415) 216-8348',
    hours: '12:00 PM - 6:00 PM',
    price: '$'
)
b7.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/love_tea_main.jpeg'),
    filename: 'love_tea_main.jpeg'
)

b8 = Business.create!(
    name: 'Pandora Karaoke',
    category: 'Event Space',
    address: '50 Mason St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94102',
    lat: 37.784160,
    lng: -122.409020,
    phone: '(415) 817-1580',
    hours: '6:00 PM - 2:00 AM',
    price: '$$',
    website: 'http://pandorakaraoke.com/',
)
b8.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/pandora_karaoke_main.jpeg'),
    filename: 'pandora_karaoke_main.jpeg'
)

b9 = Business.create!(
    name: 'Safeway',
    category: 'Grocery',
    address: '350 Bay St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    lat: 37.805910,
    lng: -122.413221,
    phone: '(415) 781-4374',
    hours: '6:00 AM - 11:00 PM',
    price: '$$',
    website: 'https://local.safeway.com/safeway/ca/san-francisco/350-bay-st.html',
)
b9.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/safeway_main.jpeg'),
    filename: 'safeway_main.jpeg'
)

b10 = Business.create!(
    name: 'Palace of Fine Arts',
    category: 'Landmarks',
    address: '3601 Lyon St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94123',
    lat: 37.804396,
    lng: -122.448032,
    phone: '(415) 886-1929',
    hours: '10:00 AM - 5:00 PM',
    price: '$$$',
    website: 'https://palaceoffinearts.com/',
)
b10.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/palace_of_fine_arts_main.jpeg'),
    filename: 'palace_of_fine_arts_main.jpeg'
)

b11 = Business.create!(
    name: 'Crissy Field',
    category: 'Landmarks',
    address: '603 Mason St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94129',
    lat: 37.803827,
    lng: -122.455515,
    phone: '(415) 561-4323',
    hours: '24 hours',
    price: '$$$',
    website: 'https://www.parksconservancy.org/programs/crissy-field-center'
)
b11.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/crissy_field_main.jpeg'),
    filename: 'crissy_field_main.jpeg'
)

b12 = Business.create!(
    name: 'Arsicault Bakery',
    category: 'Bakeries',
    address: '397 Arguello Blvd',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94118',
    lat: 37.783353,
    lng: -122.459282,
    phone: '(415) 750-9460',
    hours: '8:00 AM - 3:00 PM',
    price: '$$',
    website: 'https://arsicault-bakery.com/home',
)
b12.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/arsicault_bakery_main.jpeg'),
    filename: 'arsicault_bakery_main.jpeg'
)

b13 = Business.create!(
    name: 'The Mill',
    category: 'Bakeries',
    address: '736 Divisadero St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94117',
    lat: 37.776463,
    lng: -122.437701,
    phone: '(415) 345-1953',
    hours: '7:00 AM - 5:00 PM',
    price: '$$',
    website: 'http://www.themillsf.com/',
)
b13.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/the_mill_main.jpeg'),
    filename: 'the_mill_main.jpeg'
)

b14 = Business.create!(
    name: 'Golden Gate Park',
    category: 'Parks',
    address: '501 Stanyan St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94117', 
    lat: 37.771857,
    lng: -122.454270,
    phone: '(415) 831-2700',
    hours: '24 hours',
    price: '$$$',
    website: 'https://sfrecpark.org/770/Golden-Gate-Park',
)
b14.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/golden_gate_park_main.jpeg'),
    filename: 'golden_gate_park_main.jpeg'
)

b15 = Business.create!(
    name: 'Son & Garden',
    category: 'Breakfast & Brunch',
    address: '700 Polk St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94109',
    lat: 37.783333,
    lng: -122.419097,
    phone: '(415) 913-7404',
    hours: '9:00 AM - 9:00 PM',
    price: '$$',
    website: 'https://sonandgarden.com/',
)
b15.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/son_and_garden_main.jpeg'),
    filename: 'son_and_garden_main.jpeg'
)

b16 = Business.create!(
    name: 'Le Marais Bakery',
    category: 'Bakeries',
    address: '498 Sanchez St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94114',
    lat: 37.761281,
    lng: -122.430714,
    phone: '(415) 872-9026',
    hours: '8:00 AM - 3:00 PM',
    price: '$$',
    website: 'https://www.lemaraisbakery.com/',
)
b16.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/le_marais_main.jpeg'),
    filename: 'le_marais_main.jpeg'
)

b17 = Business.create!(
    name: 'Tacos El Patron',
    category: 'Mexican',
    address: '1500 S Van Ness Ave',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94110',
    lat: 37.749012,
    lng: -122.416106,
    phone: '(415) 829-7315',
    hours: '10:00 AM - 10:00 PM',
    price: '$$'
)
b17.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tacos_el_patron_main.jpeg'),
    filename: 'tacos_el_patron_main.jpeg'
)

b18 = Business.create!(
    name: 'Um Ma',
    category: 'Korean',
    address: '1220 9th Ave',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94122',
    lat: 37.765538,
    lng: -122.466212,
    phone: '(415) 566-5777',
    hours: '11:00 AM - 9:00 PM',
    price: '$$',
    website: 'https://www.ummasf.com/',
)
b18.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/um_ma_main.jpeg'),
    filename: 'um_ma_main.jpeg'
)

b19 = Business.create!(
    name: 'Senor Sisig',
    category: 'Mexican',
    address: '990 Valencia St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94110',
    lat: 37.757182,
    lng: -122.421356,
    phone: '(855) 747-4455',
    hours: '11:00 AM - 9:00 PM',
    price: '$$',
    website: 'https://www.senorsisig.com/',
)
b19.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/senor_sisig_main.jpeg'),
    filename: 'senor_sisig_main.jpeg'
)

b20 = Business.create!(
    name: 'Robin',
    category: 'Japanese',
    address: '620 Gough St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94102',
    lat: 37.779182,
    lng: -122.423313,
    phone: '(415) 448-7372',
    hours: '5:00 PM - 9:30 PM',
    price: '$$$$',
    website: 'http://www.robinsanfrancisco.com/',
)
b20.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/robin_main.jpeg'),
    filename: 'robin_main.jpeg'
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