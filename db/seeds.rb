# Clean database eg. Catcher.destroy_all
require 'date'
Trip.destroy_all
Destination.destroy_all
Catcher.destroy_all

# Create User
jd = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'Male', hobbies: 'Cooking')
ar = Catcher.create!(email: 'ar@doe.com', password: 'qwerty', user_name: 'Andrea', first_name: 'Andrea',  last_name: 'Rhiel', gender: 'Female', hobbies: 'Running')
oa = Catcher.create!(email: 'oa@doe.com', password: 'qwerty', user_name: 'Stardust', first_name: 'Omar',  last_name: 'Azzouzi', gender: 'Male', hobbies: 'Video games')
gd = Catcher.create!(email: 'gd@doe.com', password: 'qwerty', user_name: 'Reese', first_name: 'Ghizlane',  last_name: 'Derdabi', gender: 'Female', hobbies: 'Dancing')
# Create Destination
london = Destination.create!(location: 'london', description: 'cool', price: 90)
paris = Destination.create!(location: 'paris', description: 'beautiful', price: 85)
berlin = Destination.create!(location: 'berlin', description: 'street art', price: 70)
# Create Favorites
favourites = Favourite.create!(catcher_id: jd.id, destination_id:london.id)
# Create Trips
trips = Trip.create!(destination_id: london.id, start_date: Date.today, end_date: (Date.today + 5))
# Create Invitations
invitations = Invitation.create!(catcher_id: jd.id, trip_id: trips.id, joined: true)

# Destination pics
url = "https://i.pinimg.com/564x/79/71/57/797157200af372aabff10a4e0a62447c.jpg"
pic = Picture.new(destination_id: london.id)
pic.remote_photo_url = url
pic.save

url1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIroKIE2x4QXKBZ4PvsUq3mDfwmHc5SGpqaek2ax_EPM379Q4U"
pic1 = Picture.new(destination_id: paris.id)
pic1.remote_photo_url = url1
pic1.save

url2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBbmfctjfTWAzNBMAEw8mPywGC89ybkW-411EjFLkyMQR4ODL"
pic2 = Picture.new(destination_id: berlin.id)
pic2.remote_photo_url = url2
pic2.save

# Catcher pics
url = "https://i.pinimg.com/564x/de/85/6e/de856e73fb361b843a96c252c9be24f4.jpg"
pic = Picture.new(catcher_id: jd.id)
pic.remote_photo_url = url
pic.save

url0 = "https://i.pinimg.com/564x/a3/19/db/a319db890a12c4286643d2c317f75dc4.jpg"
pic0 = Picture.new(catcher_id: ar.id)
pic0.remote_photo_url = url0
pic0.save

url1 = "https://i.pinimg.com/564x/11/ef/1c/11ef1cd476ae54730d6d95b165b57f19.jpg"
pic1 = Picture.new(catcher_id: oa.id)
pic1.remote_photo_url = url1
pic1.save

url2 = "https://i.pinimg.com/564x/03/20/d2/0320d23dfb8a7a6959f2cdbf54707ed2.jpg"
pic2 = Picture.new(catcher_id: gd.id)
pic2.remote_photo_url = url2
pic2.save
