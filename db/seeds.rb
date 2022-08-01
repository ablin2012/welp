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
b1.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/chubby_noodle_1.jpeg'), 
    filename: 'chubby_noodle_1.jpeg'
)
b1.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/chubby_noodle_2.jpeg'), 
    filename: 'chubby_noodle_2.jpeg'
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
b2.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/trader_joes_1.jpeg'),
    filename: 'trader_joes_1.jpeg'
)
b2.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/trader_joes_2.jpeg'),
    filename: 'trader_joes_2.jpeg'
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
b3.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/busters_cheesesteak_1.jpeg'),
    filename: 'busters_cheesesteak_1.jpeg'
)
b3.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/busters_cheesesteak_2.jpeg'),
    filename: 'busters_cheesesteak_2.jpeg'
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
b4.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/wong_lee_bakery_1.jpeg'),
    filename: 'wong_lee_bakery_1.jpeg'
)
b4.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/wong_lee_bakery_2.jpeg'),
    filename: 'wong_lee_bakery_2.jpeg'
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
b5.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tancca_1.jpeg'),
    filename: 'tancca_1.jpeg'
)
b5.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tancca_2.jpeg'),
    filename: 'tancca_2.jpeg'
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
b6.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/teaspoon_1.jpeg'),
    filename: 'teaspoon_1.jpeg'
)
b6.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/teaspoon_2.jpeg'),
    filename: 'teaspoon_2.jpeg'
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
b7.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/love_tea_1.jpeg'),
    filename: 'love_tea_1.jpeg'
)
b7.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/love_tea_2.jpeg'),
    filename: 'love_tea_2.jpeg'
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
b8.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/pandora_karaoke_1.jpeg'),
    filename: 'pandora_karaoke_1.jpeg'
)
b8.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/pandora_karaoke_2.jpeg'),
    filename: 'pandora_karaoke_2.jpeg'
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
b9.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/safeway_1.jpeg'),
    filename: 'safeway_1.jpeg'
)
b9.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/safeway_2.jpeg'),
    filename: 'safeway_2.jpeg'
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
b10.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/palace_of_fine_arts_1.jpeg'),
    filename: 'palace_of_fine_arts_1.jpeg'
)
b10.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/palace_of_fine_arts_2.jpeg'),
    filename: 'palace_of_fine_arts_2.jpeg'
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
b11.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/crissy_field_1.jpeg'),
    filename: 'crissy_field_1.jpeg'
)
b11.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/crissy_field_2.jpeg'),
    filename: 'crissy_field_2.jpeg'
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
b12.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/arsicault_bakery_1.jpeg'),
    filename: 'arsicault_bakery_1.jpeg'
)
b12.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/arsicault_bakery_2.jpeg'),
    filename: 'arsicault_bakery_2.jpeg'
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
b13.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/the_mill_1.jpeg'),
    filename: 'the_mill_1.jpeg'
)
b13.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/the_mill_2.jpeg'),
    filename: 'the_mill_2.jpeg'
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
b14.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/golden_gate_park_1.jpeg'),
    filename: 'golden_gate_park_1.jpeg'
)
b14.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/golden_gate_park_2.jpeg'),
    filename: 'golden_gate_park_2.jpeg'
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
b15.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/son_and_garden_1.jpeg'),
    filename: 'son_and_garden_1.jpeg'
)
b15.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/son_and_garden_2.jpeg'),
    filename: 'son_and_garden_2.jpeg'
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
b16.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/le_marais_1.jpeg'),
    filename: 'le_marais_1.jpeg'
)
b16.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/le_marais_2.jpeg'),
    filename: 'le_marais_2.jpeg'
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
b17.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tacos_el_patron_1.jpeg'),
    filename: 'tacos_el_patron_1.jpeg'
)
b17.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/tacos_el_patron_2.jpeg'),
    filename: 'tacos_el_patron_2.jpeg'
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
b18.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/um_ma_1.jpeg'),
    filename: 'um_ma_1.jpeg'
)
b18.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/um_ma_2.jpeg'),
    filename: 'um_ma_2.jpeg'
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
b19.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/senor_sisig_1.jpeg'),
    filename: 'senor_sisig_1.jpeg'
)
b19.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/senor_sisig_2.jpeg'),
    filename: 'senor_sisig_2.jpeg'
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
b20.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/robin_1.jpeg'),
    filename: 'robin_1.jpeg'
)
b20.photos.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_business_photos/robin_2.jpeg'),
    filename: 'robin_2.jpeg'
)

u1 = User.create!(
    first_name: 'Guest',
    last_name: 'User',
    email: 'guest@email.com',
    password: '123456'
)
u1.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/guest.webp'), 
    filename: 'guest.webp'
)

u2 = User.create!(
    first_name: 'Aang',
    last_name: 'Avatar',
    email: 'aang@email.com',
    password: '123456'
)
u2.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/aang.png'), 
    filename: 'aang.png'
)

u3 = User.create!(
    first_name: 'Katara',
    last_name: 'Waterbender',
    email: 'katara@email.com',
    password: '123456'
)
u3.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/katara.jpeg'), 
    filename: 'katara.jpeg'
)

u4 = User.create!(
    first_name: 'Zuko',
    last_name: 'Firelord',
    email: 'zuko@email.com',
    password: '123456'
)
u4.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/zuko.jpeg'), 
    filename: 'zuko.jpeg'
)

u5 = User.create!(
    first_name: 'Toph',
    last_name: 'Beifong',
    email: 'toph@email.com',
    password: '123456'
)
u5.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/toph.jpeg'), 
    filename: 'toph.jpeg'
)


u6 = User.create!(
    first_name: 'Sokka',
    last_name: 'Boomerang',
    email: 'sokka@email.com',
    password: '123456'
)
u6.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/sokka.png'), 
    filename: 'sokka.png'
)

u7 = User.create!(
    first_name: 'Cabbage',
    last_name: 'Merchant',
    email: 'mycabbages@email.com',
    password: '123456'
)
u7.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/cabbage_man.webp'), 
    filename: 'cabbage_man.webp'
)

u8 = User.create!(
    first_name: 'Azula',
    last_name: 'Firelord',
    email: 'azula@email.com',
    password: '123456'
)
u8.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/azula.webp'), 
    filename: 'azula.webp'
)

u9 = User.create!(
    first_name: 'Suki',
    last_name: 'Kyoshi',
    email: 'suki@email.com',
    password: '123456'
)
u9.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/suki.jpeg'), 
    filename: 'suki.jpeg'
)

u10 = User.create!(
    first_name: 'Iroh',
    last_name: 'Tea',
    email: 'iroh@email.com',
    password: '123456'
)
u10.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/iroh.jpeg'), 
    filename: 'iroh.jpeg'
)

u11 = User.create!(
    first_name: 'Ozai',
    last_name: 'Firelord',
    email: 'ozai@email.com',
    password: '123456'
)
u11.photo.attach(
    io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/ozai.png'), 
    filename: 'ozai.png'
)

# Reviews for Chubby Noodle
Review.create!(rating: 5, body: 'This place was definitely my favorite brunch experience. Went on a Sunday during pride weekend and it was such a blast! The music was great, the food was packed with flavor', user_id: u9.id, business_id: b1.id,) #suki
Review.create!(rating: 2, body: 'The service was terrible! My girlfriend and I placed an order to go and not only did we have to wait 20 minutes for our food, they gave us the wrong order! We had to give the food back and wait another 20 mins!', user_id: u2.id, business_id: b1.id,) #aang
Review.create!(rating: 3, body: 'For the popularity of this place I was highly disappointed in the authenticity and taste of the food. Items were either super salty or tasted like the same sauce used in 3 different ways. Nothing was outstandingly spectacular and if you\'re looking for authentic Chinese food do yourself a favor and walk a few blocks down to Chinatown instead.', user_id: u10.id, business_id: b1.id,) #iroh
Review.create!(rating: 5, body: 'If you love bottomless brunch, this is the place to go. The food is amazing and the mimosas are as well and once you drink enough mimosas, the food is even better!', user_id: u7.id, business_id: b1.id,) #cabbage
Review.create!(rating: 5, body: 'This is my favorite place to stop for bottomless brunch! My party had a reservation and when we got there, our pitcher of mimosa was already on the table waiting for us. The food was taken to our table and served family style which I love. My favorite dishes are the Salt and Pepper Shrimp and the Spicy Wontons. I always leave this place absolutely stuffed and just a little bit tipsy.', user_id: u5.id, business_id: b1.id,) #toph
Review.create!(rating: 5, body: 'I took my kids here to celebrate a recent promotion and I can confidently say that this place did not dissapoint. The Poke and Garlic Noodles were some of the best I\'ve had. I would recommend to anyone looking for some good fusion food.', user_id: u11.id, business_id: b1.id,) #ozai
Review.create!(rating: 4, body: 'The only reason this place doesn\'t get 5 is because our server did not seem suited for the service industry. I loved the food. I ordered the fried chicken and the garlic noodles and loved both. I\'m hoping my next visit will be a better service experience, otherwise I will be updating my review', user_id: u4.id, business_id: b1.id,) #zuko
Review.create!(rating: 3, body: 'The food looked good, but that\'s about all this place has going for it. The spicy garlic noodles were neither spicy nor nearly garlicy enough. I will definitely be opting for other places next time I\'m in the area', user_id: u3.id, business_id: b1.id,) #katara
Review.create!(rating: 4, body: 'The quality of the food here has gone down a bit since I first started coming here. I will leave my review at 4 because of the memories I have with this place. The last visit I ordered my favorites, the garlic noodles and the popcorn shrimp, both were extremely lackluster.', user_id: u8.id, business_id: b1.id,) #azula
Review.create!(rating: 3, body: 'I would give this place 2, but our server was the saving grace. She was absolutely adorable and always made sure that our cups were full of water and the food was to our liking. Unfortunately, the food wasn\'t to our liking. The portions were tiny for the amount we had the pay and the flavors left a lot to be desired. I ordered the garlic noodles and my friend got the spicy wontons. I would not recommend either', user_id: u6.id, business_id: b1.id,) #sokka

# Reviews for Trader Joe's
Review.create!(rating: 5, body: 'I love this place! I pretended to be an elderly man and asked for something on the very bottom shelf and the cashier actually went on hands and knees to get it for me. Then I said I wanted a different one, and the cashier went back down to get me another one! I love this place!', user_id: u6.id, business_id: b2.id,)
Review.create!(rating: 3, body: 'Nice Trader Joes but HORRIBLE parking lot. Just your ordinary Trader Joes, just like those around the city. Biggest difference is the parking lot here. Not really easy to get in or out of. Probably will not be coming back to this location while in the city', user_id: u3.id, business_id: b2.id,)
Review.create!(rating: 5, body: 'LOVE this location! They\'re like family. This particular Trader Joe\'s is another one that I adore. Always tidy and stocked with everything I need. The staff is really accommodating. Whatever it is, they go above and beyond my expectation.', user_id: u11.id, business_id: b2.id,) #ozai
Review.create!(rating: 1, body: 'There\'s been 2 instances in the last month where the cashier (different cashier each time) overcharged me. I don\'t usually get this angry (ok maybe i do), but still', user_id: u8.id, business_id: b2.id,)
Review.create!(rating: 5, body: 'There\'s this cashier who was super kind and helpful. An elderly customer asked her where the tomato paste is. It happened to be on the bottom shelf and the cashier went on hands and knees to get her a can. Then the customer said she wanted another one so the cashier had to get back down there to get another one.', user_id: u2.id, business_id: b2.id,) #aang
Review.create!(rating: 5, body: 'OMG love this store. Just bought everything but the bagel kettle chips and the cabbages. So delicious (although my cabbages are better)! Great service! This store is fabulous. Everything is totally stocked and neat.', user_id: u7.id, business_id: b2.id,)
Review.create!(rating: 2, body: 'This is not a review of the store itself. The produce and overall quality of this Trader Joe\'s is fine. An employee at this establishment, is one of the rudest and most ill tempered individuals EVER. She was seen openly cursing out a customer in the parking lot in a profanity laced tirade. Her behavior is inexcusable and needs to be addressed immediately!', user_id: u10.id, business_id: b2.id,)
Review.create!(rating: 5, body: 'Who doesn\'t love TJs? Everyone there is so friendly! If your looking for a particular item and call ahead they\'ll hold it for you.', user_id: u5.id, business_id: b2.id,)
Review.create!(rating: 5, body: 'I shop multiple grocery stores for deals and specific items, but TJ is one of my favorites in terms of variety of foods, prices, location, friendly and helpfulness of staff, and in recent months, how they handle crowds (social distancing due to COVID-19.)', user_id: u9.id, business_id: b2.id,)
Review.create!(rating: 4, body: 'How can you not love Trader Joe\'s! Their food is super affordable and tasty! Guaranteed to have something for everyone. Be aware of parking, if you do come here. There is a person to direct parking but still gets pretty congested.', user_id: u4.id, business_id: b2.id,)

# Reviews for Buster's Cheesesteak
Review.create!(rating: 5, body: 'Cheese steak was on point. Best I\'ve had in Cali. But I was surprised by their burger and it\'s enormous size.', user_id: u3.id, business_id: b3.id,)
Review.create!(rating: 3, body: 'I tried the basic philly cheesesteak and fries here.  It was ok.  I didn\'t hate it.  I didn\'t love it.  I got the large size and only ate half.  It was rather greasy and I just didn\'t think it was worth the calories.', user_id: u11.id, business_id: b3.id,) #ozai
Review.create!(rating: 5, body: 'One of the best Philly cheesesteak sandwiches in the town is highly recommended, great customer service', user_id: u10.id, business_id: b3.id,)
Review.create!(rating: 4, body: 'Mushroom Cheesesteak (small 8.35), with White American. Really good,  bread was soft with sight crust and perfect chewy. Meat and cheese also very good.', user_id: u4.id, business_id: b3.id,)
Review.create!(rating: 3, body: 'Had the mushroom steak and it was decent, places like this I need to have a couple times to see how consistent the steak is. Aside from that it was alright. My boyfriend had a cheeseburger and he also said it was okay. We both agreed the fries were great.', user_id: u9.id, business_id: b3.id,)
Review.create!(rating: 5, body: 'Buster\'s cheesesteak was bussin. So deliciously delicious omg. Haven\'t had a good cheesesteak after visiting SF and still miss it til this day!', user_id: u6.id, business_id: b3.id,)
Review.create!(rating: 5, body: 'This place saved my life post bars in San Francisco. I got a Philly Cheese Steak Sandwich with chili in it. Super fire, filling, low cost, and clutch since they\'re open until very late. I really enjoyed the taste and they weren\'t even that messy. Overall great spot to satisfy your post drinking munchies. Not sure how they would taste during the day though ;)', user_id: u5.id, business_id: b3.id,)
Review.create!(rating: 1, body: 'Legitimately awful F grade beef and no substance. Overpriced and overcooked, yet lacking in any flavor that wasn\'t reminiscent of what it\'d probably taste like coming back up. It tastes like vomit, that\'s what I\'m trying to say.', user_id: u7.id, business_id: b3.id,)
Review.create!(rating: 5, body: 'My favorite cheesesteak in the entire Bay Area is back open for business and ready to serve you 7 days a week! It\'s the only cheesesteak that I\'ll go out of my way for, and drive from San Bruno to get on a regular basis.', user_id: u8.id, business_id: b3.id,)
Review.create!(rating: 5, body: 'Ordered here at almost 2am on the way home from Bay Area. So freaking good and was definitely fresh! Mouth watering here just thinking about it', user_id: u2.id, business_id: b3.id,) #aang

# Reviews for Wong Lee Bakery
Review.create!(rating: 5, body: 'Great dim sum and even better prices! The taro cakes and har gow were seasoned especially well and the sesame balls had the perfect amount of red bean. Highly recommend any of the dumplings or buns.', user_id: u3.id, business_id: b4.id,) #katara
Review.create!(rating: 1, body: 'I don\'t normally give reviews, but I had to this time. The dim sum was good, but the lady behind the counter was so rude that it makes you want to go elsewhere. I told her you don\'t need to be so rude and she yelled \'WHAT?\' with a stupid look on her face.', user_id: u7.id, business_id: b4.id,) #cabbage
Review.create!(rating: 2, body: 'There\'s always a line of locals here, but the dim sum is really not that good. The rice flour casing is very thick on the shrimp and parsley dumplings, but once you dig through that the flavor of the shrimp is ok.', user_id: u6.id, business_id: b4.id,) #sokka
Review.create!(rating: 4, body: 'We stumbled here on accident while looking for a different restaurant. The food here is amazing. Generous portions and great prices. Being able to speak Cantonese is highly recommended.', user_id: u5.id, business_id: b4.id,) #toph
Review.create!(rating: 4, body: 'Good reasonable stuff but check for missing or mispacked items. They forgot to include 1 doz sesame balls.  Never checked what they packed as its terribly crowded & communication issue', user_id: u11.id, business_id: b4.id,) #ozai
Review.create!(rating: 4, body: 'Cheap, fast and delicious.  It\'s not the best cheap takeout dim sum but it usually doesn\'t have a ridiculously long line', user_id: u9.id, business_id: b4.id,) #suki
Review.create!(rating: 1, body: 'Would not recommend this place. Bad customer service and the food was not that good! They did not want to service anyone at all. Took them 5 minute later to service us. The lady did not even get my order correctly and jam everything into a small container.', user_id: u4.id, business_id: b4.id,) #zuko
Review.create!(rating: 4, body: 'Very traditional HK style buns and other pastries. Freshly baked and runs out in the late afternoon. As with all  types of Chineses buns and pastries, eating it hot or warm increases the yummi-ness factor', user_id: u2.id, business_id: b4.id,) #aang
Review.create!(rating: 3, body: 'Had a har gow, shark fin, and shumai (my typical order) plus a taro puff. The hargow and shumai weren\'t bad. But the sharkfin had way too much dough in the \'fin\' making it weirdly toothsome. Also the taro puff was not good. Just sorta dry and tough. Probably overcooked.', user_id: u10.id, business_id: b4.id,) #iroh
Review.create!(rating: 4, body: 'Cheap, fast and tasty dim sum. They do catering as well, although you have to plan early and pick up yourself. As far as I know, they do not do delivery.', user_id: u8.id, business_id: b4.id,) #azula

# Reviews for Tancca
Review.create!(rating: 4, body: 'I  really like their drinks and the vibe of the cafe. Boba quality is good and the owner is nice. I really like the wall mural too.', user_id: u6.id, business_id: b5.id,) #sokka
Review.create!(rating: 1, body: 'Beyond disappointed and annoyed of my experience here. Customer service is literally non-existent as others have mentioned in other reviews. I walked into an EMPTY store (there were no other customers inside or outside), and the singular man (asian dude with long hair) working there did not even notice my entrance. There was no greeting, and he didn\'t even bother looking up nor walk over to the register to take my order.', user_id: u5.id, business_id: b5.id,) #toph
Review.create!(rating: 4, body: 'A typical milk tea location with above average tasting milk tea. The milk tea itself was very good, I fancy myself a milk tea enthusiast (although, I\'ve been told otherwise by others) and thought it was of good quality.', user_id: u7.id, business_id: b5.id,) #cabbage
Review.create!(rating: 4, body: 'Assam milk tea with their tiramisu foam IS OUT OF THIS WORLD. My drink was 50% sweet with no ice. Walked about 8 minutes to get back to the office and my drink is still cold! The lady in the back is very nice and friendly.', user_id: u9.id, business_id: b5.id,) #suki
Review.create!(rating: 4, body: 'This shop was exactly what I was looking for in my search for a boba tea in SF. I ordered the snowy mango boba tea and it hit the spot. It was a  touch too sweet but next time I will inquire about how to tamper it because the mango', user_id: u3.id, business_id: b5.id,) #katara
Review.create!(rating: 5, body: 'We ordered the Assam MT with puff cream, Matcha MT, and Mango Snow with lychee jelly and boba. Everything tasted so good!', user_id: u4.id, business_id: b5.id,) #zuko
Review.create!(rating: 5, body: 'First, I want to say that I am their number 1 fan of their puff cream because it\'s so addicting! Been there a couple times, the owner is always there to greet me. He is super nice & always willing to help me adjust my drink.', user_id: u2.id, business_id: b5.id,) #aang
Review.create!(rating: 5, body: 'Wasn\'t expecting much as Chinatown boba has been historically mediocre, but this place is pretty great! Love all the foam and toppings options. The grass jelly was particularly soft and delectable. You can tell the owners really want to carve out a cute place via the decorations & the menu', user_id: u11.id, business_id: b5.id,) #ozai
Review.create!(rating: 5, body: 'So good! Visited this place since their location on Geary has been closed for about a year now and was feeling nostalgic. Menu was exactly the same. Big menu, lots of different drink options. Street parking available. Interior was also cute, and nice decorations.', user_id: u8.id, business_id: b5.id,) #azula
Review.create!(rating: 5, body: 'Loved the kumquat lemon tonic, and the jasmine green milk tea was great too.  Great little spot for tea to go with your to-go dim sum / bakery stuff in Chinatown.', user_id: u10.id, business_id: b5.id,) #iroh

# Reviews for Teaspoon
Review.create!(rating: 5, body: 'I\'ve made it a mission to try every boba spot in the Bay Area and there\'s A LOT of boba shops here. Teaspoon is by far my favorite boba spot so far. Their boba is cooked just right- texture & chewiness is on point and consistent.', user_id: u4.id, business_id: b6.id,) #zuko
Review.create!(rating: 4, body: 'You can\'t go wrong with any Teaspoon location. It doesn\'t matter which city it is in, I can get the same flavored milk tea (my usual: rose petal oolong) and honey boba and have it taste exactly how I like it! However, boba consistency may vary, but that doesn\'t bug me.', user_id: u8.id, business_id: b6.id,) #azula
Review.create!(rating: 4, body: 'I have now tried this location and the location in South Bay. This one is much better quality. The establishment isn\'t as nice but that\'s besides the tea. The tea here had a good flavor and was brewed properly. Nothing was too sweet, and the service was fantastic.', user_id: u11.id, business_id: b6.id,) #ozai
Review.create!(rating: 3, body: 'Their selling point is that they have a lot of unique options and rotating specials. Unfortunately, every drink I\'ve had from here has been WAY too sweet for me. I always order less sweet and it\'s typically so sweet that I can only ever drink a little bit of it before feeling sick.', user_id: u2.id, business_id: b6.id,) #aang
Review.create!(rating: 5, body: 'Was looking for a boba place nearby and stumbled upon this place! The drink was great, not too sweet, (50% sweet, light on the ice for the House Milk Tea). I also love the straws! (100% biodegradable). I will be coming back in the future to try other drinks!', user_id: u9.id, business_id: b6.id,) #suki
Review.create!(rating: 3, body: 'I like Teaspoon on Polk Street in San Francisco but not one in San Mateo and in Los Gatos. I gave three stars only because the inconsistency. I was expecting same taste all three locations.', user_id: u7.id, business_id: b6.id,) #cabbage
Review.create!(rating: 3, body: 'Came in on a Wednesday afternoon around 5pm. I got the house milk tea with boba and 25% sweet. The milk tea was okay. The tea could have been a bit stronger. The boba was on the chewier side. Even at 25% sweet, it was still too sweet.', user_id: u3.id, business_id: b6.id,) #katara
Review.create!(rating: 3, body: 'I love tea, but this place is middle of the road for me. I prefer a refreshing jasmine, and all the jasmine options at this place are a bit too sweet, even with adjustments', user_id: u10.id, business_id: b6.id,) #iroh
Review.create!(rating: 5, body: 'Fresh soft boba. Their new Cream Coffee is excellent! Great service! I like the to go option and no spill packaging', user_id: u5.id, business_id: b6.id,) #toph
Review.create!(rating: 4, body: 'The Dirty Ube with honey boba was amazing, but the organic coffee overpowered the taste a bit, so I would have definitely wanted less coffee in mine -- but other than that it was so good.', user_id: u6.id, business_id: b6.id,) #sokka

# Reviews for Love Tea
Review.create!(rating: 4, body: 'This place is awesome and so good. I usually get the passion fruit tea with regular boba but they ran out that day during the lunar new year festival so I had to order a different topping of boba but it was pretty good.', user_id: u5.id, business_id: b7.id,) #toph
Review.create!(rating: 5, body: 'Beautiful boba shop with such a unique, jaw dropping decor! I love the drinks they had on the menu and also the owners were super nice!', user_id: u6.id, business_id: b7.id,) #sokka
Review.create!(rating: 3, body: 'Beautiful little tea shop, the taro milk tea was a bit chalky, but still yummy! Boba is a must - always!! Good location in the heart of Chinatown. Fast service with a friendly staff! :-)', user_id: u7.id, business_id: b7.id,) #cabbage
Review.create!(rating: 5, body: 'HUGE variety of drinks and options for various deep-fried snacks!! Their decor is also super cute with the umbrellas hanging off the ceiling.', user_id: u4.id, business_id: b7.id,) #zuko
Review.create!(rating: 4, body: 'Great little place in Chinatown to get a pick me upper. The staff was easygoing and helpful with a few questions I had.', user_id: u2.id, business_id: b7.id,) #aang
Review.create!(rating: 5, body: 'Great coffee, great tea. Highly recommended! The owner was also very nice. Will def come back next time.', user_id: u11.id, business_id: b7.id,) #ozai
Review.create!(rating: 1, body: 'I tried their Hong Kong Style Lemon Tea. Is very disappointing. It taste nothing like the one I had in Hong Kong. Is not a very authentic Hong Kong Style Lemon Tea. Is not very sweet and it does not have a strong tea flavor.', user_id: u9.id, business_id: b7.id,) #suki
Review.create!(rating: 2, body: 'After walking all over Chinatown, my friend and I stopped in for some Boba Tea. Almost an hour later, we walked out with our drinks.', user_id: u3.id, business_id: b7.id,) #katara
Review.create!(rating: 4, body: 'The food and drinks are delicious, the staff is fast and friendly, the menu is huge and orders are customizable, and the decorations are beautiful. As an avid tea enthusiast, I truly believe this is one of the best boba places I have ever been to.', user_id: u10.id, business_id: b7.id,) #iroh
Review.create!(rating: 5, body: 'The location is super cute!!! It was my first time trying mango milk tea and it was DELICIOUS! The staff was polite and the place is really clean. They have hand sanitizers on the tables which is greatly appreciated!', user_id: u8.id, business_id: b7.id,) #azula

# Reviews for Pandora Karaoke
Review.create!(rating: 4, body: 'This place is awesome and vibes are amazing! Its easy to sing along no matter where you are in the room because they have a screen facing every direction. The only complaint I have is that the mic volume was consistently low.', user_id: u2.id, business_id: b8.id,) #aang
Review.create!(rating: 3, body: 'The two things that make Pandora different from other KTV (aka Asian-style karaoke room) places is that: 1. they have a much wider selection of English songs, many of which have the original music video, and 2. they don\'t allow you to bring in your own alcohol or any beverages whatsoever.', user_id: u11.id, business_id: b8.id,) #ozai
Review.create!(rating: 1, body: 'Ignored singers that were just having fun but not particularly skilled to entertain the crowd.', user_id: u6.id, business_id: b8.id,) #sokka
Review.create!(rating: 5, body: 'A fun place to throw a karaoke party especially because they have a bunch of rooms of different sizes available and a great collection of music, including some Bollywood music which we really enjoyed', user_id: u8.id, business_id: b8.id,) #azula
Review.create!(rating: 1, body: 'The venue had very nice decor and lighting but I was treated very badly by the bouncer when I came in. He told me I wasn\'t conforming to the dress code because my shoes were dirty. In fact they were brand new Calvin Kleins.', user_id: u4.id, business_id: b8.id,) #zuko
Review.create!(rating: 4, body: 'Pandora is always a good time! You can bring big groups or show up with just a few friends and either (1) sing/listen to the karaoke in the main room next to the full bar (the karaoke queue can be quite long), (2) book a private karaoke room for downstairs to sing your hearts out with a shorter queue, or (3) grab drinks and dance the night away on the rather large dance floor downstairs!', user_id: u5.id, business_id: b8.id,) #toph
Review.create!(rating: 1, body: 'They never answer the phone or emails regarding reservations and thats not right when some one is trying to reserve a room', user_id: u3.id, business_id: b8.id,) #katara
Review.create!(rating: 2, body: 'A great spot to drag your friends, family, coworkers or someone for a mediocre first date. Small vibes not big vibes.', user_id: u9.id, business_id: b8.id,) #suki
Review.create!(rating: 4, body: 'I love that they have both private rooms and a stage for karaoke. Of course I sung in front of the crowd and they loved my beautiful voice', user_id: u10.id, business_id: b8.id,) #iroh
Review.create!(rating: 5, body: 'This place was pretty cool. An upstairs and downstairs. They need a better draft beer selection. The DJ pretty much had anything to karaoke too. Would come again!', user_id: u7.id, business_id: b8.id,) #cabbage

# Reviews for Safeway
Review.create!(rating: 5, body: 'This location used to be expensive and have enormous lines, but it has hugely improved! After opening the self checkout stands on the east side of the store, the lines go WAY quicker. Thank you for finally opening these!', user_id: u4.id, business_id: b9.id,) #zuko
Review.create!(rating: 1, body: 'This is a small safeway. You wount find everything you need here. And always out of stock on deals.', user_id: u2.id, business_id: b9.id,) #aang
Review.create!(rating: 1, body: 'I was leaving the store when eruption happened with a woman who was allegedly stealing stealing a big stuffed animal and one of the security guards grabbed the toy. The woman started screaming that the guard assaulted her right in front of her child.', user_id: u11.id, business_id: b9.id,) #ozai
Review.create!(rating: 3, body: 'I sometimes come here for groceries because of the central location. Also because of the location it is dirty and not the most clean crowd. It\'s larger which is nice because it has more products. Covid precautions aren\'t met.', user_id: u8.id, business_id: b9.id,) #azula
Review.create!(rating: 1, body: 'Worst place to go grocery shopping. Saw a customer not wearing a mask- pretty much touching the food/produce - told staff member of my concern - employee said they don\'t enforce mask policy', user_id: u6.id, business_id: b9.id,) #sokka
Review.create!(rating: 1, body: 'The racial profiling that takes place at this store is sad. I shop here almost daily. They have stepped up security system at this store in the past few months tremendously, however of course, there is still a significant amount of theft going on.', user_id: u7.id, business_id: b9.id,) #cabbage
Review.create!(rating: 1, body: 'The absolute worst Safeway I\'ve ever shopped in. The staff knew nothing about the food or alcohol they had. Most staff members are rude and act like asking a question is taking time away from something extremely serious.', user_id: u3.id, business_id: b9.id,) #katara
Review.create!(rating: 1, body: 'They treat everyone like there going to steal something ... They accused a young middle school kid of stealing a sandwich or something a few months  ago it was all over news', user_id: u5.id, business_id: b9.id,) #toph
Review.create!(rating: 3, body: '3 stars for the employees of this store for putting up with the dregs of society that come here and disrupt everything including other customers.', user_id: u10.id, business_id: b9.id,) #iroh
Review.create!(rating: 1, body: 'Terrible. Security does almost nothing to stop thieves. If you need to buy anything which you can\'t buy in self check-out (beer, wine, etc), you\'re going to wait.', user_id: u9.id, business_id: b9.id,) #suki

# Reviews for Palace of Fine Arts
Review.create!(rating: 5, body: 'Beautiful and Romantic.  I\'ve lived in the Bay Area my entire life and just visited this place today. Amazing statues that tower over head. Dress warm as it can get windy and breezy. Want something free to do. Get here.', user_id: u8.id, business_id: b10.id,) #azula
Review.create!(rating: 4, body: 'The Palace of Fine Arts is a monumental structure located in the Marina District of San Francisco, California, originally constructed for the 1915 Panama-Pacific International Exposition to exhibit works of art. Completely rebuilt from 1964 to 1974, it is the only structure from the exposition that survives on site. Conceived to evoke a decaying ruin of ancient Rome, the Palace of Fine Arts became one of San Francisco\'s most recognizable landmarks. Early 2009 marked the completion of a renovation of the lagoons and walkways and a seismic retrofit.', user_id: u4.id, business_id: b10.id,) #zuko
Review.create!(rating: 5, body: 'This place is beautiful. The lake with the ducks is so serence and relaxing, you can just sit somewhere and kill time while watching the ducks. You can walk your furry pets around here, be sure to pick up after them. You can also have photo shoots especially pre-nups since the structures are so nice here. My niece had her civil wedding here as well.', user_id: u7.id, business_id: b10.id,) #cabbage
Review.create!(rating: 5, body: 'Palace of Fine Arts was one of the sites I never visited while in SF. Very surprised because they dome is so amazing. Free, street parking was not hard to find in the morning. Lots of people walk the park. As an architectural site, it is beautiful. The dome and pond together make an amazing photo op. Great site to visit!', user_id: u9.id, business_id: b10.id,) #suki
Review.create!(rating: 5, body: 'The Palace of Fine Arts is a spot that always wows me! The openness, the architecture, the history, and just the overall energy is something that makes this place unreal. It feels like you somehow time traveled out of SF  into Rome and I love it. I bring all my friends visiting SF here because it\'s too beautiful not to check out', user_id: u10.id, business_id: b10.id,) #iroh
Review.create!(rating: 4, body: 'I enjoyed our walk in the park here this place is amazingly beautiful and a place that you should visit if you are in San Francisco. Came here in the early morning so people were jogging and walking for their daily exercise. This place was built in 1915 and looks amazing in person. Some people also rent this place out for private venues and even weddings! So if you\'re looking to maybe take some photos like engagement photos this could be a possible location.', user_id: u5.id, business_id: b10.id,) #toph
Review.create!(rating: 5, body: 'The Palace of Fine Arts is a beautiful place to take pictures! When I visited San Francisco a while back, my friend showed me all the great sights and this is one of those places that needs to go on your must-see list. We drove and parked in the neighborhood 2-3 blocks away and walked over. It was a nice walk since there\'s a long stretch by the ocean and you can see a lot of people walking or running. Some were even biking. It was a lovely day around September.', user_id: u6.id, business_id: b10.id,) #sokka
Review.create!(rating: 5, body: 'The Palace of Fine Arts is yet another extraordinary San Francisco landmark. Originally built for the 1915 Panama-Pacific Exhibition, the Palace of Fine Arts is now considered a park and event venue available for corporate events, galas, trade shows, weddings, and other large events. It\'s open Tuesday-Sunday, though it closes on Mondays and during special events. They also have a recently opened cafe.', user_id: u11.id, business_id: b10.id,) #ozai
Review.create!(rating: 5, body: 'Beautiful and most importantly, free place to take gorgeous pictures for special events such as prom, graduation, engagement proposal, etc. It has a pretty vast parking lot, which costs $2/hour as of May 2022. On a Sunday afternoon around 3pm, there were barely any cars in the lot, so super car-friendly location!', user_id: u3.id, business_id: b10.id,) #katara
Review.create!(rating: 5, body: 'The Palace of Fine Arts is one of the most picturesque places in San Francisco, and it\'s still wonderful to visit regularly. Its Romanesque vibe is dreamy. Initially built for the 1915 Panama-Pacific Exposition, the Greco-Roman rotunda is supported by a curved colonnade topped with friezes and statues of weeping women, and commonly viewed from the pond side, which is home to ducks, swans and lily pads. Most of what the eyes see today, except the shell of the rotunda, is a rebuilt from 1964.', user_id: u2.id, business_id: b10.id,) #aang

# Reviews for Crissy Field
Review.create!(rating: 5, body: 'When I was riding my bike from Fisherman\'s Wharf to the Golden Gate Bridge, this was one of my favorite spots to pass through. Crissy Field is so beautiful and peaceful. It was once a military airfield before it was renovated in 2001. Now it is a beautiful grassy park with bike trails, picnic tables, BBQ grills, and a tidal marsh. You get some amazing views of the Golden Gate Bridge from here. I personally like all the birds that roam around the tall grass areas. There is a Warming Hut at the end that offers chocolate, tea, and coffee.', user_id: u6.id, business_id: b11.id,) #sokka
Review.create!(rating: 5, body: 'After crossing the Golden Gate Bridge, we wanted to stop nearby to take a look on foot. Parking was easy and after a few minutes walk, we were already on the shore watching dogs run, checking out how small Alcatraz is, and of course taking selfies with the Golden Gate Bridge itself.', user_id: u8.id, business_id: b11.id,) #azula
Review.create!(rating: 5, body: 'I don\'t think there is a better spot for hanging out with stunning views of the Golden Gate Bridge. You can picnic, fly a kite, access the water, go on a beautiful walk or run, watch the crashing waves, spot some ocean wildlife, go on a hike, whatever you want!', user_id: u5.id, business_id: b11.id,) #toph
Review.create!(rating: 5, body: 'One of my favorite beaches to take my dog to! Easy parking and plenty of space for the dogs to run around, not to mention a beautiful view of the Golden Gate Bridge. Highly recommend this beach for dog owners', user_id: u4.id, business_id: b11.id,) #zuko
Review.create!(rating: 5, body: 'Wonderful spot for an easy hike. It wasn\'t too cold or crowded when I came here for a quick hike on a Sunday afternoon.', user_id: u10.id, business_id: b11.id,) #iroh
Review.create!(rating: 2, body: 'The water slopes downward which Alley pup wanted nothing to do with.  It\'s fairly crowded for a Tuesday and dog owners were ambivalent about watching their dogs. There was no fresh drinking water for us dogs which made it tough to stay out for too long.', user_id: u7.id, business_id: b11.id,) #cabbage
Review.create!(rating: 4, body: 'Love visiting Crissy Field as it has beautiful scenery of the water with plenty of parking spaces. This is a rare location in SF that has free parking and beautiful views!', user_id: u2.id, business_id: b11.id,) #aang
Review.create!(rating: 5, body: 'I have increasingly become more of a fan of Crissy Field. It just enough out of the way of the city even though it\'s just minutes away. This is my go-to spot for the dogs. They love it here and enjoy running free and booping noses with other dogs. In my experience everyone here seems to be very pet friendly regardless of being a pet owner or not. If you search down one of the paths, they have a map posted that shows sections for off-leash, on leash, or leashed if you can\'t control your dog areas. Didn\'t think to take a pic of the sign.', user_id: u11.id, business_id: b11.id,) #ozai
Review.create!(rating: 5, body: 'Such a gorgeous place to practice water bending and get a fabulous view of Golden Gate as well as the back side of SF with Palace of Fine Arts and all. Accessible restrooms and many tourists. The trail with steps is also worth the hike up for another great view of GG.', user_id: u3.id, business_id: b11.id,) #katara
Review.create!(rating: 5, body: 'Great area for walks and a view of the Golden Gate Bridge. Also a great place to see lots of dogs. I saw a lot of people taking walks with their fluffy friends.', user_id: u9.id, business_id: b11.id,) #suki

# Reviews for Arsicault Bakery
Review.create!(rating: 5, body: 'Ugh. After Arsicault, I no longer look forward to croissants elsewhere. These are seriously the best, buttery, flaky croissants I\'ve ever had on the West Coast. The Saturday morning line was about 20 minutes when I came during the summer, which I think might be one of their busier times. It\'s right next to the farmers market.', user_id: u2.id, business_id: b12.id,) #aang
Review.create!(rating: 4, body: 'Everything we got was delicious! Went on a busy Sunday morning but the line went reasonably fast. Ordered the savory scone (4 out of 5), almond croissant (5 out of 5), ham and cheese croissant (5 out of 5), and kouign amann (5 out of 5). Savory scone was a tad bit dry, but everything else was perfectly flaky and satisfying. This place is a must-try if you\'re visiting San Francisco\'s inner Richmond area.', user_id: u7.id, business_id: b12.id,) #cabbage
Review.create!(rating: 5, body: 'Arsicault makes my absolute FAVORITE croissant in SF!  The ham and cheese croissant here is to DIE for (well, all their croissants are really).  They know what they are good at because the menu is pretty simple with a few pastries, tea, and drip coffee.  I actually haven\'t tried their plain croissants (woops), but I can attest to the chocolate croissant, almond croissant, and the chocolate almond croissant as well if you\'re craving something sweeter.', user_id: u3.id, business_id: b12.id,) #katara
Review.create!(rating: 5, body: 'This small bakery truly has the best almond croissant on the west coast. It\'s crispy, fresh, has the perfect ratio of almond filling to croissant, and is topped with the right amount of powdered sugar. We\'ve been coming here for years, and this place does not disappoint (unless you come late in the day and they are sold out).', user_id: u11.id, business_id: b12.id,) #ozai
Review.create!(rating: 5, body: 'It\'s true. Arsicault is home to the best croissants-- some say, in the world, to which I concur. I feel like a fraud having grown up in the SF Bay Area and loving all things viennoiseries, but not visiting Arsicault until last week. How I wish I had come sooner.', user_id: u9.id, business_id: b12.id,) #suki
Review.create!(rating: 5, body: 'When I asked which bakery I should try in SF, multiple friends suggested this one. BEST croissant ever. Super flaky. Also loved the kouign Amman and the ham & cheese croissant. Keep in mind there is no seating at this spot but we didn\'t mind taking it to go!', user_id: u6.id, business_id: b12.id,) #sokka
Review.create!(rating: 5, body: 'Wowowoowow. Need to stop by for some pastries!! These are so delicious, they are a must have. There is always a line but it goes quickly and it\'s just a little window to make your order. The almond croissant was defiantly surgery but so so good.', user_id: u4.id, business_id: b12.id,) #zuko
Review.create!(rating: 4, body: 'Really fantastic croissants! Some of the best I\'ve had, in a long time or maybe ever. Flaky dough that\'s sweet and light. Fillings are really nice and loaded up - lots of chocolate, blueberry, etc. in whatever croissant you end up getting. Quite filling too - we had these twice, once as part of a breakfast/brunch with coffee and pastries, and once as a snack in-between wine tastings in Sonoma. Both times these really hit the spot. I would love to come back and try more flavors!', user_id: u8.id, business_id: b12.id,) #azula
Review.create!(rating: 5, body: 'Best croissants I\'ve had, hands downs. It\'s probably the closest thing to Paris croissants! Highly recommend you eat it right away once you get it!', user_id: u10.id, business_id: b12.id,) #iroh
Review.create!(rating: 5, body: 'Another solid local rec. Went here on a morning walk and tried the ham croissant and the blackberry powder sugar croissant. Both were buttery, flakey and melted in your mouth. Really good quality! My advice is what the hotel told me, be careful which direction you walk here from.. a few streets north isn\'t the best if you\'re unfamiliar.', user_id: u5.id, business_id: b12.id,) #toph

# Reviews for The Mill
Review.create!(rating: 4, body: 'Great vibes here! The line was out the door on a Friday morning. I was here at 8am and was surprised that majority of the seats were taken.', user_id: u5.id, business_id: b13.id,) #toph
Review.create!(rating: 4, body: 'The Mill was the #1 place I wanted to visit during my trip to SF and I want to say that the toast definitely lived up to the hype in terms of taste.', user_id: u7.id, business_id: b13.id,) #cabbage
Review.create!(rating: 4, body: 'A beautiful, bustling cafe next to Alamo Square, with gorgeous decor, different kinds of yummy toast, and your standard selection of coffee drinks. It does get quite busy, so might be hard to snag a spot to work!', user_id: u2.id, business_id: b13.id,) #aang
Review.create!(rating: 4, body: 'I was ready to be underwhelmed but actually SUCH a fan. I don\'t even usually like avocado toast! The bread was so so fluffy and the avocado with lemon and salt whoa. Big fan. Would totally come back. Was pricey and pretty crowded but this toast was it.', user_id: u4.id, business_id: b13.id,) #zuko
Review.create!(rating: 3, body: 'I was super excited to try The Mill after friends recommended it and since there\'s always a long line. The cafe was super cute although the seating is slightly limited. I personally ordered the lemon ricotta + jam toast. It was pretty good - the ricotta featured accents of lemon which complemented the seasonal jam but I wouldn\'t say it was life changing. Also on the pricier side for toast. But again it was cute.', user_id: u6.id, business_id: b13.id,) #sokka
Review.create!(rating: 5, body: 'This is definitely my favorite morning/breakfast place in San Francisco because no matter where I am staying in San Francisco, this is where I want to come to get at least toast and sometimes coffee too.', user_id: u11.id, business_id: b13.id,) #ozai
Review.create!(rating: 4, body: 'One of the better coffee shops in all of SF. The espresso shots are pulled well. The food is very good, especially their version of a toad in a hole. It was nice to sit and watch the world come in and out. The only disappointment was the cold brew that hadn\'t steeped long enough and just tasted of dirty water.', user_id: u10.id, business_id: b13.id,) #iroh
Review.create!(rating: 4, body: 'I only ordered an iced tea (which was fine), but the main thing that stood out was how on point the ambience was. Definitely a lively and stylish place for catching up with someone, getting some work done, or perhaps even a first date.', user_id: u8.id, business_id: b13.id,) #azula
Review.create!(rating: 4, body: 'Stumbled upon this quaint shop while site seeing. Loved the ambiance and the staff really has getting orders out to a science. They were kind and quick, which was needed because it was a very happening place for a Monday morning', user_id: u3.id, business_id: b13.id,) #katara
Review.create!(rating: 5, body: 'I can\'t believe it took me this long to finally try the Mill! It\'s always packed inside and now I know why.  The cinnamon sugar toast was sooooo good! The bread is extra thick with a soft and chewy center. The cappuccino was pretty good but the highlight of this cafe was the toast.', user_id: u9.id, business_id: b13.id,) #suki

# Reviews for Golden Gate Park
Review.create!(rating: 4, body: 'Golden Gate Park in my experience is to San Francisco like Central Park is to New York City. I lived in San Francisco and Berkeley for a time. I enjoyed my visits to the park. I always tried to spend time when I wasn\'t working. This place is so huge there\'s never enough time.', user_id: u10.id, business_id: b14.id,) #iroh
Review.create!(rating: 5, body: 'We drove to SF from Sonoma county just to walk around this beautiful park. Gorgeous trees, many little lakes all around the park, Bison Paddock, and of course kids playgrounds. There are lots of bathrooms in the park. I love watching  the turtles and birds here. It\'s very peaceful. You can also find a couple of waterfalls.', user_id: u3.id, business_id: b14.id,) #katara
Review.create!(rating: 5, body: 'This is such a beautiful place to get lost in for hours. It\'s surrounded by high-traffic roads, yet feels so serene and separate from the chaos of the city.', user_id: u7.id, business_id: b14.id,) #cabbage
Review.create!(rating: 5, body: 'One of the best city park in United States. Museums, lakes, statues, sports area, gardens, and windmills are all in one big park. Bike funs can go to JFK Drive for biking without the worry about the cars. It is a street for biking and walking only. Best place for watching sunset on the west side of the park.', user_id: u2.id, business_id: b14.id,) #aang
Review.create!(rating: 5, body: 'We decided to check out Golden Gate Park on our drive around San Francisco but we didn\'t really have a plan in mind for what we\'d do there. We ended up stopping by the AIDS memorial redwood grove and loved the peacefulness of the wooded setting. It was so beautiful inside the grove and it really made you feel like you were far-removed from the city.', user_id: u9.id, business_id: b14.id,) #suki
Review.create!(rating: 5, body: 'I  love going to this beautiful park whenever I am in San Francisco.  Even if I\'m just passing through for work. Parking is tricky unless you are there during a less busy time. Honestly, there is so much more here that I need to spend more time at.  I haven\'t truly been through the park.', user_id: u4.id, business_id: b14.id,) #zuko
Review.create!(rating: 4, body: 'Been here a few times before and is always a blast. Big, beautiful trees, lushes green grass, and miles of walking trails! Lots of walkers, joggers, and dogs galore getting their morning walks. This time was an early cool morning with thick fog in the skies, so make sure to wear layers as the fog burns off in the mid afternoon.', user_id: u5.id, business_id: b14.id,) #toph
Review.create!(rating: 5, body: 'This is my favorite place in the city. I can\'t imagine spending my afternoons and weekends anywhere else. The park is beautiful and well maintained. You can walk in the park every day and still discover something new. I especially love relaxing in the grass with a good book or playing ultimate frisbee in one of the park\'s many open green spaces.', user_id: u11.id, business_id: b14.id,) #ozai
Review.create!(rating: 4, body: 'Great place to throw around a boomerang! Although people will yell at you and tell you to stop using boomerang when you hit them.', user_id: u6.id, business_id: b14.id,) #sokka
Review.create!(rating: 5, body: 'Golden Gate Park is one of my favorite places to visit when I\'m in San Francisco. It\'s so peaceful and has many options for things to do. I like to come here to relax after a busy day in the city. It\'s very spacious with plenty of room to run, jog or walk your dog. It is over 3 miles long lengthwise and is actually bigger than NYC\'s Central Park.', user_id: u8.id, business_id: b14.id,) #azula

# Reviews for Son & Garden
Review.create!(rating: 5, body: 'My third time here, but first for tea. OMG! Everything was perfect, from the ambiance to the service to the food. The attention to detail was fabulous. We eat with our eyes, and presentation alone told us our tea set would be delicious. Looking forward to returning soon :)', user_id: u11.id, business_id: b15.id,) #ozai
Review.create!(rating: 4, body: 'One of the cutest dining experiences we had since coming out of Covid. Wait--are we still in it? I don\'t know anymore. So a few of us gathered for a birthday party recently. So much fun! Decor is on point, cutesy, very Insta friendly. Lots of photo-op decor.', user_id: u4.id, business_id: b15.id,) #zuko
Review.create!(rating: 3, body: 'I have to say the food was good, but my group of friends and I were there mainly for the hype and ambiance. It was very unique and colorful. The vibes were nice. If you\'re looking to come here reserve in advance, long lines and spots fill fast. Not worth it to me, but I\'d come with a group of friends if they really wanted to go.', user_id: u9.id, business_id: b15.id,) #suki
Review.create!(rating: 5, body: 'Awesome place, nice drinks, the place is very colorful and nice, i really recommend this place, for those who want to try a very spontaneous place please visit, definitely will go again', user_id: u2.id, business_id: b15.id,) #aang
Review.create!(rating: 5, body: 'I came across this from other fellow yelp reviewers and the cute interior pics! They def got a lil bit of everything for everyone! I would say to make a reservation im advance so you can get seated immediately when you arrive', user_id: u8.id, business_id: b15.id,) #azula
Review.create!(rating: 5, body: 'This place is pure pleasure and a treat. Its fun, social media Ready, amazing food, wonderful service.', user_id: u6.id, business_id: b15.id,) #sokka
Review.create!(rating: 4, body: 'This spot is so aesthetically pleasing! There are floral designs on the ceiling and and throughout the restaurant. Of course, I had to take a pic with the flower wall before leaving this beautiful place!', user_id: u3.id, business_id: b15.id,) #katara
Review.create!(rating: 3, body: 'I concur with many other reviewers that this place is FAR more fluff than substance. It\'s significantly overpriced and I don\'t feel like I got anything near my money\'s worth. I don\'t care about the perfect Instagram photo of my food or the bench in the front. Yes, everything was cute and presented well, but the portions were extremely small for a significant cost.', user_id: u10.id, business_id: b15.id,) #iroh
Review.create!(rating: 4, body: 'I love the drinks and the vibe of the place, but everyone kept saying that the decorations were beautiful, but I couldn\'t tell due to me being blind', user_id: u5.id, business_id: b15.id,) #toph
Review.create!(rating: 3, body: 'First time trying this place out and honestly it was really overpriced and it\'s just for Instagram people or someone who likes to take pictures of beautiful restaurants. The location was honestly not the best as I had to walk through a lot of people on the streets just to get there. It\'s also extremely hard to find parking in that area so definitely won\'t be coming back.', user_id: u7.id, business_id: b15.id,) #cabbage

# Reviews for Le Marais Bakery
Review.create!(rating: 5, body: 'A classic SF spot to get a delicious pastry and coffee / latte. Highly reco checking out their TikTok.', user_id: u3.id, business_id: b16.id,) #katara
Review.create!(rating: 3, body: 'I  was glad to have found a place to sit and do a little work/reading while having a bit of a snack/lunch. Was pretty relaxing. Sad to have found out later that the complete menu wasn\'t served here.', user_id: u11.id, business_id: b16.id,) #ozai
Review.create!(rating: 5, body: 'The plain and chocolate croissants were amazing!  We came by later in the day paid for a croissant and a turnover with a coffee and they gave us 2 croissants, 2 turnovers, a giant cookie and a small loaf thing.  Meant to just have a snack but it turned into a feast.  Everything was good but the chocolate croissant was definitely the best.  Will definitely be back.', user_id: u7.id, business_id: b16.id,) #cabbage
Review.create!(rating: 2, body: 'My partner went down to the bakery this morning to pick up a assorted selection.  When received and I took a bite out of each of the pastries he brought home I realize that these have been chilled they were cold and soggy.', user_id: u4.id, business_id: b16.id,) #zuko
Review.create!(rating: 4, body: 'A bit of expensive but their croissants have become a constant guilty pleasure on the weekends. Crispy to the first bite, and you get this burst of sweet, gentle taste of butter that coats your tongue. I love the cinnamon croissant the most, followed by the classic Pain Au Chocolat.', user_id: u8.id, business_id: b16.id,) #azula
Review.create!(rating: 5, body: 'I\'ve come here on several occasions for a little alone time on my lunch break to escape the chaos at work. Not sure if the older gentleman behind the counter is the owner or one of the employees but he makes the best vanilla latte ever.', user_id: u9.id, business_id: b16.id,) #suki
Review.create!(rating: 1, body: '1 star for accepting orders via Door Dash then cancelling the order stating the items are unavailable. Funny but I can still order them online via your website if I go directly through the restaurant, so why can\'t the order be fulfilled? Poor service.', user_id: u6.id, business_id: b16.id,) #sokka
Review.create!(rating: 4, body: 'Really cute spot but very busy so hard to find seating! The food 8/10. Service was a bit unfriendly but would still come back because the pastries are pretty good', user_id: u2.id, business_id: b16.id,) #aang
Review.create!(rating: 5, body: 'Friendly and Nice looking Staff. Welcoming attitude. And they allow Dogs in the outside seating area was a win for me. Woof', user_id: u5.id, business_id: b16.id,) #toph
Review.create!(rating: 5, body: 'This place is definitely going to be a treat! It\'s a little pricey, but well worth the money. We ate our quiche Lorraine, so it\'s not pictured, but it was not only a large and generous portion, it was very tasty.', user_id: u10.id, business_id: b16.id,) #iroh

# Reviews for Tacos El Patron
Review.create!(rating: 5, body: 'Been on the lookout for some good Mexican in the bay and boy oh boy this place did not disappoint!! I will be returning here time and time again, definitely the best Mexican I have had in the bay thus far.', user_id: u2.id, business_id: b17.id,) #aang
Review.create!(rating: 5, body: 'Ive been coming here for years and I still love it as much as the first time I had it. The staff is friendly and food comes out pretty quickly. Finding a table can be hard sometimes, but staff always tries to help you if you want a table', user_id: u11.id, business_id: b17.id,) #ozai
Review.create!(rating: 5, body: 'Visited this establishment on Taco Tuesday and it was bustling with people (a great sign for bomb food). Vibey, upbeat Latin music on the speakers added much to the young and hip energy of the restaurant.', user_id: u5.id, business_id: b17.id,) #toph
Review.create!(rating: 5, body: 'Whenever I\'m in San Francisco, I never skip a trip to Tacos El Patron. Never. We ordered delivery since we were short on time - and they did not disappoint.', user_id: u3.id, business_id: b17.id,) #katara
Review.create!(rating: 5, body: 'The veggie burrito was delicious. That truly is my measure of how I rated this establishment. This tiny spade is pumping out some quality food.', user_id: u7.id, business_id: b17.id,) #cabbage
Review.create!(rating: 5, body: 'So filling, so good. We came at 1 pm on a Sunday and it was busy but not too packed. The cashier told us that two tacos were a good serving size, 3 if you\'re super hungry. Two was definitely enough. I got one with and one without cheese -- they were so yummy! ', user_id: u9.id, business_id: b17.id,) #suki
Review.create!(rating: 4, body: 'The Birria Tacos were delicious. So delicious that I wanted to burn the place to the ground and bathe in the ashes, but I shoudn\'t do that anymore', user_id: u8.id, business_id: b17.id,) #azula
Review.create!(rating: 3, body: 'Pretty good but very pricey. Crazy thing is we came for the birria but ended up ordering other tacos (carne and al pastor) and a burrito', user_id: u4.id, business_id: b17.id,) #zuko
Review.create!(rating: 4, body: 'It\'s not bad but I don\'t totally get the hype. All our tacos were reasonably solid but I really loved their short lived guisado spot a little bit further up on S. Van Ness and would happily exchange the two. I think it was a covid casualty and I hope they can bring it back.', user_id: u10.id, business_id: b17.id,) #iroh
Review.create!(rating: 5, body: 'Yummmy. We ordered two Birria tacos and one quesadilla to share and it was the perfect amount of food for two people. I also ordered a small horchata which turned out to be huge! The food was fantastic and I had a great experience dining in here.', user_id: u6.id, business_id: b17.id,) #sokka

# Reviews for Um Ma
Review.create!(rating: 4, body: 'Wonderful dining experience at Um Ma. We enjoyed our food, the atmosphere, and the kind service. We dined at the back patio with our pup and he got his water bowl when we sat down.', user_id: u2.id, business_id: b18.id,) #aang
Review.create!(rating: 4, body: 'Um Ma is definitely not a traditional style Korean restaurant. It has a modern trendy, and really cool vibe which you\'d see in more modern restaurants but I thought was really alluring. They have a huge backyard patio which they use for seating surrounded by trees and plants. I was excited to try Um Ma because I had heard it was one of the hot new restaurants in SF.', user_id: u7.id, business_id: b18.id,) #cabbage
Review.create!(rating: 4, body: 'I\'ve heard great things from friends about Um Ma SF and was finally able to try this place out the other week! Overall, I had a positive experience', user_id: u3.id, business_id: b18.id,) #katara
Review.create!(rating: 3, body: 'Don\'t think I\'ll be back, the food was mediocre with high prices. Picked up some food here for a picnic. I called in for pick up and the girl who picked up sounded really grumpy and annoyed. When I walked in to pick it up, I was ignored by the hosts and the kitchen staff had to get their attention for me.', user_id: u11.id, business_id: b18.id,) #ozai
Review.create!(rating: 4, body: 'Made reservations for dinner at 6:45pm on a Saturday and was seated promptly in the back patio. Space was well insulated and didn\'t feel the cold & fog, a major plus for outdoor seating.', user_id: u8.id, business_id: b18.id,) #azula
Review.create!(rating: 2, body: 'I had a reservation for this place and they seated us in the back. I didn\'t know or were we told it was going to be outdoor seating.  Come on, we are in SF, you could\'ve said that so we can come properly dressed.', user_id: u4.id, business_id: b18.id,) #zuko
Review.create!(rating: 5, body: 'Great service with delicious food and cute patio seating! I got their sullungtang and the broth was very tasty. The brisket was tender and the somen noodles were a good texture.', user_id: u6.id, business_id: b18.id,) #sokka
Review.create!(rating: 3, body: 'Food was alright at best. Seafood pancake was only dish that stood out. Bibimbap lacked flavor. Meat portions are very small compared to what you\'re actually paying. Service took longer than normal. Also we were surprised with an automatic 20% gratuity for party of 4. If you\'re looking for a cool new trendy spot for Korean food this might be your jam but if you\'re looking for more of a traditional Korean food restaurant there\'s plenty of other options available in the city.', user_id: u10.id, business_id: b18.id,) #iroh
Review.create!(rating: 4, body: 'The food was fantastic. I just want to apologize to the owners for letting my boyfriend make such a commotion during our meal.', user_id: u9.id, business_id: b18.id,) #suki
Review.create!(rating: 3, body: 'We made lunch reservations for their very cool patio in the back.  Although they ask you to QR code their menu, I would have preferred a paper menu option. My lunch bibimbab was quite disappointing since it wasn\'t authentic.  This is the first time I ever had a stone bowl not hot enough to make a rice crust on the bottom!  That was very disappointing.  ', user_id: u5.id, business_id: b18.id,) #toph

# Reviews for Senor Sisig
Review.create!(rating: 4, body: 'I always end up wishing I got a second burrito. Yeah it\'s good but also their burritos aren\'t as big as the rest of the ones in the Mission.', user_id: u9.id, business_id: b19.id,) #suki
Review.create!(rating: 5, body: 'I would come here again if I wanted a decadent vegan burrito and wasn\'t counting calories. If you are on a diet, it will be harder for you to eat healthy here so I would stick to coming when you have a cheat day.', user_id: u2.id, business_id: b19.id,) #aang
Review.create!(rating: 4, body: 'I don\'t know what the heck took me so long to eat Señor Sisig! First time trying it was a month ago and I\'ve already had it 2-3 times since! So good.', user_id: u10.id, business_id: b19.id,) #iroh
Review.create!(rating: 2, body: 'Well...its ok. It would have been great to actually taste the chicken in the senor burrito. It was more lettuce and rice. I know I didn\'t order that kind of senor burrito. ‍', user_id: u11.id, business_id: b19.id,) #ozai
Review.create!(rating: 4, body: 'I ordered the pork Senor Sisig burrito from Spark Social, which came with adobo garlic rice, pinto beans, lettuce, pico de gallo, and a cilantro cream sauce. I\'m usually not a fan of fusion foods, but this was a place that did it right. The pork in particular was very flavorful, and I could order a bowl of just that.', user_id: u3.id, business_id: b19.id,) #katara
Review.create!(rating: 5, body: 'I really liked the Senior Sisig in Oakland so I wanted to try the original location on Valencia! This place also has murals from one of my favorite artists, Aaron Kai. This place is nice and spacious with a beautiful, bright patio in the back that includes seating & murals.', user_id: u4.id, business_id: b19.id,) #zuko
Review.create!(rating: 5, body: 'Just tried their crunch-a-adilla! How did I not know they have this?? You will love this if you\'re a fan of Taco Bell\'s crunchwrap supreme. This is that but so many levels up. The size is huge and the filling is delicious! I got mine at the Spark Social food truck scene. Excited to try their other locations and menu items in the future!', user_id: u5.id, business_id: b19.id,) #toph
Review.create!(rating: 5, body: 'A solid spot for a filipino-mexican fusion. I ordered the pork sisig burrito and the ube horchata and let me say...ma sarap!', user_id: u7.id, business_id: b19.id,) #cabbage
Review.create!(rating: 5, body: 'Forget about La Taqueria (big disappointment for me) and come to Senor Sisig instead! This place totally lives up to its hype!', user_id: u6.id, business_id: b19.id,) #sokka
Review.create!(rating: 3, body: 'Ordered a senor sisig burrito for myself and shared the fries. Overall decent, nothing really special besides having a slight Filipino flavor in it.', user_id: u8.id, business_id: b19.id,) #azula

# Reviews for Robin
Review.create!(rating: 5, body: 'We got the 20 piece premium omakase set and boy it was worth every bite  Make sure to get seating at the chef\'s counter to gain the full experience!', user_id: u5.id, business_id: b20.id,) #toph
Review.create!(rating: 2, body: 'Robin is a new take on omakase, and they describe themselves as "Californian". I am starting to believe that when restaurants say that they use it as an excuse to be lazy.', user_id: u8.id, business_id: b20.id,) #azula
Review.create!(rating: 5, body: 'Wow this place puts u in a whole new world. The vibe is like too cool, club, dimmly lit with early 90\'s hop hop and r&b bumping.', user_id: u11.id, business_id: b20.id,) #ozai
Review.create!(rating: 5, body: 'My girlfriend and I came here for dinner and tried the $150 omakase. At this restaurant, you basically choose how much you want to pay and then they provide you a different experience depending on your set price. It ranges from $100-$200.', user_id: u4.id, business_id: b20.id,) #zuko
Review.create!(rating: 5, body: 'Omakase is one of my favorite meals and San Francisco isn\'t lacking when it comes to its share of high-quality, amazing omakase restaurants. If you love trying out new places, Robin offers a unique, non-traditional take on omakase that I absolutely loved. The atmosphere was very different compared to other omakase places that I\'ve been to. It was dimly lit and they played hip hop/R&B which added to the cool modern vibe.', user_id: u10.id, business_id: b20.id,) #iroh
Review.create!(rating: 5, body: 'A however much you want to pay omakase place! I highly recommend the $120-$140 range to make sure you are full enough and also getting some of the unique fish. I definitely walked away very full and that\'s not all the time for omakases. You get your moneys worth!', user_id: u7.id, business_id: b20.id,) #cabbage
Review.create!(rating: 3, body: 'I don\'t even know why I came here. I think I\'m supposed to be a vegetarian. Gotta spend that avatar bag somehow', user_id: u2.id, business_id: b20.id,) #aang
Review.create!(rating: 4, body: 'I would describe the taste of the food as more asian fusion. I think there\'s a lot less emphasis on the taste of the fish itself and more on the other flavors they mix into each dish. We probably got around 10 dishes. I think most tasted fine, there wasn\'t anything I really loved, but I enjoy traditional omakase that emphasizes the fish a lot more. My favorite was probably the tuna and the ice cream dessert.', user_id: u3.id, business_id: b20.id,) #katara
Review.create!(rating: 5, body: 'I love love love Robin. As most other reviews have mentioned, this is very contemporary. Each piece is a combination of flavors that you would never see regularly.', user_id: u6.id, business_id: b20.id,) #sokka
Review.create!(rating: 4, body: 'We were actually served by the Chef, Adam Tortosa, and he definitely made the whole experience a lot more interesting as we got to learn about the story behind the resultant and each dish. For instance, Adam told us the restaurant is actually named after his mom, also, the idea of the iconic sushi with chip & caviar came from his ex girlfriend who used to eat chips with caviar.', user_id: u9.id, business_id: b20.id,) #suki