# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Business.destroy_all
Review.destroy_all
demouser = User.create!(email: 'alvin@zhao.com', password: '123456', first_name: 'Alvin', last_name: ' Zhao', zipcode: '91765')

# chinese Food
b1 = Business.create!(
  biz_name: 'Asian Academy',
  category: "Chinese Food",
  price: "$",
  address: '825 Battery st',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94111',
  lat: '37.799150',
  lng: '-122.401421',
  rating: 4,
  business_info: "We are offering awesome food all day!",
  phone_number: "(909) 757-0223",
  website: "awesomeacdemy.com",
  hours: [
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],	
    ["11:00", "23:00"],
    ["11:00", "23:00"]
  ]
)
photo1 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/rice.jpg')
b1.photos.attach(io: photo1, filename: 'rice.jpg')
photo2 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/noodle.jpg')
b1.photos.attach(io: photo2, filename: 'noodle.jpg')
photo3 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/vVjk7GGar3UjXFPcHT1ee7CP')
b1.photos.attach(io: photo3, filename: 'vVjk7GGar3UjXFPcHT1ee7CP')

b2 = Business.create!(
  biz_name: 'Happy Chinese Restaurant',
  category: "Chinese Food",
  price: "$",
  address: '1326 Powell St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94133',
  lat: '37.799485',
  lng: '-122.409492',
  rating: 3,
  business_info: "You must try some ChuanCai here!",
  phone_number: "(415) 398-1268",
  website: "HappyChinaTown.com",
  hours: [
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
    ["9:00", "23:00"],	
  ]
)
photo4 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/hundun.jpeg')
b2.photos.attach(io: photo4, filename: 'hundun.jpeg')
photo5 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/baozi.jpeg')
b2.photos.attach(io: photo5, filename: 'baozi.jpeg')
photo6 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/baozi2.jpeg')
b2.photos.attach(io: photo6, filename: 'baozi2.jpeg')

b3 = Business.create!(
  biz_name: 'King Kee',
  category: "Chinese Food",
  price: "$$",
  address: '101 Cyril Magnin St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94102',
  lat: '37.786779',
  lng: '-122.408546',
  rating: 5,
  business_info: "King Kee!",
  phone_number: "(415) 398-8188",
  website: "kingkeetogo.com",
  hours: [
    ["9:00", "12:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
    ["9:00", "22:00"],	
  ]
)
photo_file7 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/chuancai.jpeg')
b3.photos.attach(io: photo_file7, filename: 'chuancai.jpeg')
photo_file8 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/cshrimp.jpeg')
b3.photos.attach(io: photo_file8, filename: 'cshrimp.jpeg')
photo_file9 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/doufu.jpeg')
b3.photos.attach(io: photo_file9, filename: 'doufu.jpeg')

b4 = Business.create!(
  biz_name: 'China Live',
  category: "Chinese Food",
  price: "$$$",
  address: '644 Broadway',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94133',
  lat: '37.798013',
  lng: '-122.407915',
  rating: 5,
  business_info: "7 days open from midnight to midnight!",
  phone_number: "(415) 788-8188",
  website: "chinalivesf.com",
  hours: [
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
    ["0:00", "23:00"],	
  ]
)
photo_file10 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/hotpot1.jpeg')
b4.photos.attach(io: photo_file10, filename: 'hotpot1.jpeg')
photo_file11 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/kaoyu.jpeg')
b4.photos.attach(io: photo_file11, filename: 'kaoyu.jpeg')
photo_file12 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/tangculiji.jpeg')
b4.photos.attach(io: photo_file12, filename: 'tangculiji.jpeg')

b5 = Business.create!(
  biz_name: 'Kam PO Kitchen',
  category: "Chinese Food",
  price: "$",
  address: '801 Broadway',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94133',
  lat: '37.798081',
  lng: '-122.410410',
  rating: 4,
  business_info: "Very nice food with amazing low price!",
  phone_number: "(415) 982-3516",
  website: "chinalivesf.com",
  hours: [
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
    ["10:00", "23:00"],	
  ]
)
photo_file13 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/springrolls.jpeg')
b5.photos.attach(io: photo_file13, filename: 'springrolls.jpeg')
photo_file14 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/kaoya.jpeg')
b5.photos.attach(io: photo_file14, filename: 'kaoya.jpeg')
photo_file15 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/meatball.jpeg')
b5.photos.attach(io: photo_file15, filename: 'meatball.jpeg')

# BBQ

b6 = Business.create!(
  biz_name: 'Guerras To Go',
  category: "BBQ",
  price: "$$",
  address: '345 Taraval St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94116',
  lat: '37.743389',
  lng: '-122.469972',
  rating: 4,
  business_info: "We provide quick, quality meals at low cost.",
  phone_number: "(628) 900-9873",
  website: "guerrastogo.com",
  hours: [
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
  ]
)
photo16= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq1.jpg')
b6.photos.attach(io: photo16, filename: 'bbq1')
photo17 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq2.jpg')
b6.photos.attach(io: photo17, filename: 'bbq2')
photo18 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq3.jpg')
b6.photos.attach(io: photo18, filename: 'bbq3')


b7 = Business.create!(
  biz_name: 'Jang Soo BBQ',
  category: "BBQ",
  price: "$$",
  address: '6314 Geary Blvd',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94121',
  lat: '37.780326',
  lng: '-122.487224',
  rating: 3,
  business_info: "Try some Korean BBQ here , you will love it.",
  phone_number: "(415) 221-8282",
  website: "goodplace.com",
  hours: [
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
  ]
)
photo19= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq4.jpg')
b7.photos.attach(io: photo19, filename: 'bbq4')
photo20 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq5.jpeg')
b7.photos.attach(io: photo20, filename: 'bbq5')
photo21 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq6.jpeg')
b7.photos.attach(io: photo21, filename: 'bbq6')


b8 = Business.create!(
  biz_name: 'AK BBQ',
  category: "BBQ",
  price: "$$",
  address: '1820 Clement St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94121',
  lat: '37.783136',
  lng: '-122.478632',
  rating: 5,
  business_info: "Best place for you and your friends.",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
  ]
)
photo22= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq7.jpeg')
b8.photos.attach(io: photo22, filename: 'bbq7')
photo23 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq8.jpeg')
b8.photos.attach(io: photo23, filename: 'bbq8')
photo24 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq9.jpeg')
b8.photos.attach(io: photo24, filename: 'bbq9')

b9 = Business.create!(
  biz_name: 'Alvin BBQ',
  category: "BBQ",
  price: "$$",
  address: '1387 rolling knoll',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '91765',
  lat: '37.783200',
  lng: '-122.478200',
  rating: 5,
  business_info: "Something special here Haha",
  phone_number: "(909) 610-0060",
  website: "goodplace.com",
  hours: [
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
  ]
)
photo25= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq10.jpeg')
b9.photos.attach(io: photo25, filename: 'bbq10')
photo26 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq11.jpeg')
b9.photos.attach(io: photo26, filename: 'bbq11')
photo27 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq12.jpeg')
b9.photos.attach(io: photo27, filename: 'bbq12')

b10 = Business.create!(
  biz_name: 'Camp BBQ',
  category: "BBQ",
  price: "$$",
  address: '4014 Geary Blvd',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94118',
  lat: '37.782646',
  lng: '-122.462508',
  rating: 5,
  business_info: "camp plus BBQ, good place to party",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
    ["11:00", "18:00"],	
  ]
)
photo28= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq13.jpeg')
b10.photos.attach(io: photo28, filename: 'bbq13')
photo29 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq14.jpeg')
b10.photos.attach(io: photo29, filename: 'bbq14')
photo30 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bbq15.jpeg')
b10.photos.attach(io: photo30, filename: 'bbq15')


# bars
b11 = Business.create!(
  biz_name: 'Charmaines Rooftop Bar & Lounge',
  category: "Bar",
  price: "$$$",
  address: '1100 Market Street Entrance',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94102',
  lat: '37.783023',
  lng: '-122.412813',
  rating: 4,
  business_info: "Relax and we have free drinks everyday",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo31= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar1.jpeg')
b11.photos.attach(io: photo31, filename: 'bar1')
photo32 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar2.jpeg')
b11.photos.attach(io: photo32, filename: 'bar2')
photo33 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar3.jpeg')
b11.photos.attach(io: photo33, filename: 'bar3')

b12 = Business.create!(
  biz_name: 'Final Final',
  category: "Bar",
  price: "$$$",
  address: '2990 Baker St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94123',
  lat: '37.800715',
  lng: '-122.445316',
  rating: 4,
  business_info: "sports fans , here is your home",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo34= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar4.jpeg')
b12.photos.attach(io: photo34, filename: 'bar4')
photo35 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar5.jpeg')
b12.photos.attach(io: photo35, filename: 'bar5')
photo36 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar6.jpeg')
b12.photos.attach(io: photo36, filename: 'bar6')


b13 = Business.create!(
  biz_name: 'Alchemist Bar & Lounge',
  category: "Bar",
  price: "$$$",
  address: '679 3rd St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94107',
  lat: '37.781982',
  lng: '-122.392559',
  rating: 3,
  business_info: "Oceanside Bar, nice night views here",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo37= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar7.jpeg')
b13.photos.attach(io: photo37, filename: 'bar7')
photo38 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar8.jpeg')
b13.photos.attach(io: photo38, filename: 'bar8')
photo39 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar9.jpeg')
b13.photos.attach(io: photo39, filename: 'bar9')

b14 = Business.create!(
  biz_name: 'Local Edition',
  category: "Bar",
  price: "$$$",
  address: '691 Market St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94105',
  lat: '37.789732',
  lng: '-122.402845',
  rating: 3,
  business_info: "Local San Francisco Style",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo40= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar10.jpeg')
b14.photos.attach(io: photo40, filename: 'bar10')
photo41 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar11.jpeg')
b14.photos.attach(io: photo41, filename: 'bar11')
photo42 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar12.jpeg')
b14.photos.attach(io: photo42, filename: 'bar12')



b15 = Business.create!(
  biz_name: 'Alvin Homie Bar',
  category: "Bar",
  price: "$$$",
  address: '7595 kenwood pl',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94107',
  lat: '37.784955',
  lng: '-122.399254',
  rating: 3,
  business_info: "Alvin Has A Bar here, free drinks for AA",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo43= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar13.jpeg')
b15.photos.attach(io: photo43, filename: 'bar13')
photo44 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar14.jpeg')
b15.photos.attach(io: photo44, filename: 'bar14')
photo45 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/bar15.jpeg')
b15.photos.attach(io: photo45, filename: 'bar15')

# sushi

b16 = Business.create!(
  biz_name: 'Alvin Awesome Sushi',
  category: "Sushi",
  price: "$$$",
  address: '4844 peterson st',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94107',
  lat: '37.795281',
  lng: '-122.395815',
  rating: 5,
  business_info: "free lunch for all A/a TAs and students",
  phone_number: "(415) 864-9374",
  website: "goodplace.com",
  hours: [
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
    ["11:00", "2:00"],	
  ]
)
photo46= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s1.jpeg')
b16.photos.attach(io: photo46, filename: 's1')
photo47 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s2.jpeg')
b16.photos.attach(io: photo47, filename: 's2')
photo48 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s3.jpeg')
b16.photos.attach(io: photo48, filename: 's3')

b17 = Business.create!(
  biz_name: 'Zushi Puzzle',
  category: "Sushi",
  price: "$$$$",
  address: '1910 Lombard St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94123',
  lat: '37.801074',
  lng: '-122.433108',
  rating: 5,
  business_info: "We have happy hours everyday",
  phone_number: "(415) 931-9319",
  website: "zushipuzzle.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo49= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s4.jpeg')
b17.photos.attach(io: photo49, filename: 's4')
photo50 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s5.jpeg')
b17.photos.attach(io: photo50, filename: 's5')
photo51 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s6.jpeg')
b17.photos.attach(io: photo51, filename: 's6')


b18 = Business.create!(
  biz_name: 'Akikos Restaurant',
  category: "Sushi",
  price: "$$$$",
  address: '431 Bush St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94108',
  lat: '37.792246',
  lng: '-122.404092',
  rating: 5,
  business_info: "Japan Tradational Sushi and Sashimi",
  phone_number: "(415) 397-3218",
  website: "akikosrestaurant.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo52= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s7.jpeg')
b18.photos.attach(io: photo52, filename: 's7')
photo53 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s8.jpeg')
b18.photos.attach(io: photo53, filename: 's8')
photo54 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s9.jpeg')
b18.photos.attach(io: photo54, filename: 's9')

b19 = Business.create!(
  biz_name: 'Koo',
  category: "Sushi",
  price: "$$",
  address: '408 Irving St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94122',
  lat: '37.765975',
  lng: '-122.462403',
  rating: 5,
  business_info: "High-quality sushi & innovative grilled plates",
  phone_number: "(415) 731-7077",
  website: "sushikoo.com",
  hours: [
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
    ["17:00", "2:00"],	
  ]
)
photo55= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s10.jpeg')
b19.photos.attach(io: photo55, filename: 's10')
photo56 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s11.jpeg')
b19.photos.attach(io: photo56, filename: 's11')
photo57 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s12.jpeg')
b19.photos.attach(io: photo57, filename: 's12')

b20 = Business.create!(
  biz_name: 'Saru Sushi Bar',
  category: "Sushi",
  price: "$$$",
  address: '3856 24th St',
  city: 'San Francisco',
  state: 'CA',
  zipcode: '94114',
  lat: '37.752496',
  lng: '-122.428899',
  rating: 5,
  business_info: "Carefully sourced & presented fish stars at this miniature",
  phone_number: "(415) 400-4510",
  website: "akaisarusf.com",
  hours: [
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
    ["10:00", "2:00"],	
  ]
  )
photo58= open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s13.jpeg')
b20.photos.attach(io: photo58, filename: 's13')
photo59 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s14.jpeg')
b20.photos.attach(io: photo59, filename: 's14')
photo60 = open('https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/s15.jpeg')
b20.photos.attach(io: photo60, filename: 's15')


# reviews

Review.create!(
  body: "I can see how this place is 5 stars on Yelp, but I'm going to have to disagree a little bit with the community on this one. I came here with a friend on a strong recommendation, and after reading the reviews, I arrived",
  rating: 4,
  biz_id: b1.id,
  author_id: demouser.id,
)
Review.create!(
  body: "Just as good as their North Beach sister restaurant. We ordered a roasted chicken, mixed salad and fries to go.  Grilled chicken had a great skin and not greasy. Salad was a fresh, balanced mix. Salsa was zesty and made me wish for tortillas instead of bread",
  rating: 4,
  biz_id: b2.id,
  author_id: demouser.id,
)
Review.create!(
  body: "This is a great new restaurant. The neighborhood is very lucky to get good spot especially in these hard times.If you haven't tried them, give them a try.",
  rating: 3,
  biz_id: b3.id,
  author_id: demouser.id,
)
Review.create!(
  body: "This is a great new restaurant. The neighborhood is very lucky to get good spot especially in these hard times.If you haven't tried them, give them a try.",
  rating: 3,
  biz_id: b4.id,
  author_id: demouser.id,
)

Review.create!(
  body: "This is a great new restaurant. The neighborhood is very lucky to get good spot especially in these hard times.If you haven't tried them, give them a try.",
  rating: 4,
  biz_id: b5.id,
  author_id: demouser.id,
)
