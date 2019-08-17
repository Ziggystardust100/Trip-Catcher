# Clean database eg. Catcher.destroy_all
require 'date'
Trip.destroy_all
Destination.destroy_all
Catcher.destroy_all

# Create User
john_doe = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
Catcher.create!(email: 'john2@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
Catcher.create!(email: 'john3@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
# Create Destination
london = Destination.create!(location: 'london', description: 'cool', price: 90)
paris = Destination.create!(location: 'paris', description: 'beautiful', price: 85)
berlin = Destination.create!(location: 'berlin', description: 'street art', price: 70)
# Create Favorites
favourites = Favourite.create!(catcher_id: john_doe.id, destination_id:london.id)
# Create Trips
trips = Trip.create!(destination_id: london.id, start_date: Date.today, end_date: (Date.today + 5))
# Create Invitations
invitations = Invitation.create!(catcher_id: john_doe.id, trip_id: trips.id, joined: true)


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
