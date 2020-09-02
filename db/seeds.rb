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