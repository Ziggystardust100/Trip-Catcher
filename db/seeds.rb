# Clean database eg. Catcher.destroy_all
require 'date'
Trip.destroy_all
Destination.destroy_all
Catcher.destroy_all

# Create User
john_doe = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
Catcher.create!(email: 'john2@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
Catcher.create!(email: 'john3@doe.com', password: 'qwerty', user_name: 'johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70')
# Create Destination
london = Destination.create!(location: 'london', description: 'cool', price: 90)
# Create Favorites
favourites = Favourite.create!(catcher_id: john_doe.id, destination_id:london.id)
# Create Trips
trips = Trip.create!(destination_id: london.id, start_date: Date.today, end_date: (Date.today + 5))
invitations = Invitation.create!(catcher_id: john_doe.id, trip_id: trips.id, joined: true)
# Create Invitations
