# Clean database eg. Catcher.destroy_all
require 'date'
Trip.destroy_all
Destination.destroy_all
Catcher.destroy_all

# Create User

jd = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'Male', hobbies: 'Cooking')
ar = Catcher.create!(email: 'ar@doe.com', password: 'qwerty', user_name: 'Andrea', first_name: 'Andrea',  last_name: 'Rhiel', gender: 'Female', hobbies: 'Running')
oa = Catcher.create!(email: 'oa@doe.com', password: 'qwerty', user_name: 'Stardust', first_name: 'Omar',  last_name: 'Azzouzi', gender: 'Male', hobbies: 'Video games')
gd = Catcher.create!(email: 'gd@doe.com', password: 'qwerty', user_name: 'Reese', first_name: 'Ghizlane',  last_name: 'Derdabi', gender: 'Female', hobbies: 'Dancing')
jd1 = Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")

# Create Destination

marrakech = Destination.create!(location: 'Marrakech', description: 'cool', price: 90)
paris = Destination.create!(location: 'Paris', description: 'beautiful', price: 85)
berlin = Destination.create!(location: 'Berlin', description: 'street art', price: 70)

london = Destination.create!(location: 'london', description: 'cool', price: 90, recommendation:'Go to see Tower of London')
paris = Destination.create!(location: 'paris', description: 'beautiful', price: 85,recommendation:'Go to see Eiffel Tower')
berlin = Destination.create!(location: 'berlin', description: 'street art', price: 70,recommendation:'Go to see Brandenburg Gate')

casablanca = Destination.create!(location: 'casablanca', description: 'place to be',price: 75, recommendation:'Go to see Hassan II Mosque')



# Create Favorites
favourites = Favourite.create!(catcher_id: jd.id, destination_id:marrakech.id)
# Create Trips
trips = Trip.create!(destination_id: marrakech.id, start_date: Date.today, end_date: (Date.today + 5))
# Create Invitations
invitations = Invitation.create!(catcher_id: jd.id, trip_id: trips.id, joined: true)

# Destination pics
url = "https://i.pinimg.com/564x/b6/16/be/b616be22c50159e06661ca71a88f6f3c.jpg"
pic = Picture.new(destination_id: marrakech.id)
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

url1casa ="https://media.tacdn.com/media/attractions-splice-spp-674x446/07/c3/ff/e0.jpg"
pic1casa = Picture.new(destination_id:casablanca.id)
pic1casa.remote_photo_url = url1casa
pic1casa.save

url2casa ="https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/d8/6c.jpg"
pic2casa = Picture.new(destination_id:casablanca.id)
pic2casa.remote_photo_url = url2casa
pic2casa.save

url3casa ="https://media.tacdn.com/media/attractions-splice-spp-674x446/07/c3/ff/de.jpg"
pic3casa = Picture.new(destination_id:casablanca.id)
pic3casa.remote_photo_url = url3casa
pic3casa.save

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

url2 = "https://i.pinimg.com/564x/03/20/d2/0320d23dfb8a7a6959f2cdbf54707ed2.jpg"
pic2 = Picture.new(catcher_id: jd1.id)
pic2.remote_photo_url = url2
pic2.save


puts "seeds are done!"

# Stories pics
url = "https://i.pinimg.com/564x/a5/b5/31/a5b5313a44156f69ae9db37292393ca4.jpg"
pic = Picture.new(destination_id: marrakech.id)
pic.remote_photo_url = url
pic.save

