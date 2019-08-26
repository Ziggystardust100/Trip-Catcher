# Clean database
require 'date'
Trip.destroy_all
Destination.destroy_all
Message.destroy_all
Conversation.destroy_all
Catcher.destroy_all
# Story.destroy_all

# Create Users
jd = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'Male', hobbies: 'Cooking')
ar = Catcher.create!(email: 'ar@doe.com', password: 'qwerty', user_name: 'Andre', first_name: 'Andrea',  last_name: 'Rhiel', gender: 'Female', hobbies: 'Running')
oa = Catcher.create!(email: 'oa@doe.com', password: 'qwerty', user_name: 'Stardust', first_name: 'Omar',  last_name: 'Azzouzi', gender: 'Male', hobbies: 'Video games')
gd = Catcher.create!(email: 'gd@doe.com', password: 'qwerty', user_name: 'Reese', first_name: 'Ghizlane',  last_name: 'Derdabi', gender: 'Female', hobbies: 'Dancing')
pa = Catcher.create!(email: 'paul@doe.com', password: 'qwerty', user_name: 'Paul', first_name: 'Paul',  last_name: 'Newman', gender: 'male', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
jd1 = Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'male', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")


# Create Destinations
marrakech = Destination.create!(location: 'Marrakech', description: 'cool', price: 90, recommendation:'Reach the summit of Morocco at only few miles from the town')
london = Destination.create!(location: 'London', description: 'cool', price: 90, recommendation:'Go to see Tower of London')
paris = Destination.create!(location: 'Paris', description: 'beautiful', price: 85, recommendation:'Go to see Eiffel Tower')
berlin = Destination.create!(location: 'Berlin', description: 'street art', price: 70, recommendation:'Go to see Brandenburg Gate')
casablanca = Destination.create!(location: 'Casablanca', description: 'place to be',price: 75, recommendation:'Go to see Hassan II Mosque')
hanoi = Destination.create!(location: 'Hanoi', description: 'cosmo',price: 700, recommendation:"Don't miss the salt church")

# Create Favorites
favourites = Favourite.create!(catcher_id: jd.id, destination_id:marrakech.id)

# Destination pics
urlmarr = "https://i.pinimg.com/564x/b6/16/be/b616be22c50159e06661ca71a88f6f3c.jpg"
picmarr = Picture.new(destination_id: marrakech.id)
picmarr.remote_photo_url = urlmarr
picmarr.save
  urlmarrq = "https://www.guiapaises.com/wp-content/uploads/2017/09/be7685026070406a215779b242f1aa2e_L.jpg"
  picmarrq = Picture.new(destination_id: marrakech.id)
  picmarrq.remote_photo_url = urlmarrq
  picmarrq.save

url1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIroKIE2x4QXKBZ4PvsUq3mDfwmHc5SGpqaek2ax_EPM379Q4U"
pic1 = Picture.new(destination_id: paris.id)
pic1.remote_photo_url = url1
pic1.save
  url11 = "https://i0.wp.com/www.followmeaway.com/wp-content/uploads/2019/05/shutterstock_1019364061.jpg?resize=700%2C465&ssl=1"
  pic11 = Picture.new(destination_id: paris.id)
  pic11.remote_photo_url = url11
  pic11.save
url11a = "https://joinusinfrance.com/wp-content/uploads/2016/08/paris-3257049-Pixabay-1200x628.jpg"
pic11a = Picture.new(destination_id: paris.id)
pic11a.remote_photo_url = url11a
pic11a.save


url2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBbmfctjfTWAzNBMAEw8mPywGC89ybkW-411EjFLkyMQR4ODL"
pic2 = Picture.new(destination_id: berlin.id)
pic2.remote_photo_url = url2
pic2.save
  url2w = "https://www.dw.com/image/43901161_303.jpg"
  pic2w = Picture.new(destination_id: berlin.id)
  pic2w.remote_photo_url = url2w
  pic2w.save

urldl = "https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/07/10/11/Future-London.jpg"
picdl = Picture.new(destination_id: london.id)
picdl.remote_photo_url = urldl
picdl.save
  urldla = "https://www.parkgrandkensington.co.uk/blog/wp-content/uploads/2019/02/top-places-in-London.jpg"
  picdla = Picture.new(destination_id: london.id)
  picdla.remote_photo_url = urldla
  picdla.save

urlb = "https://topasecolodge.com/wp-content/uploads/2018/05/Hanoi00.jpg"
picb = Picture.new(destination_id: hanoi.id)
picb.remote_photo_url = urlb
picb.save
  urlb1 = "https://lesvolsdalexi.s3.ca-central-1.amazonaws.com/blog/20190710134812/hanoi-cover-1152x605.jpg"
  picb1 = Picture.new(destination_id: hanoi.id)
  picb1.remote_photo_url = urlb1
  picb1.save
urlb2 = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/05/11/10/hanoi-main.jpg?w968h681"
picb2 = Picture.new(destination_id: hanoi.id)
picb2.remote_photo_url = urlb2
picb2.save

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
urljd = "https://i.pinimg.com/564x/de/85/6e/de856e73fb361b843a96c252c9be24f4.jpg"
picjd = Picture.new(catcher_id: jd.id)
picjd.remote_photo_url = urljd
picjd.save
  urlar = "https://i.pinimg.com/564x/a3/19/db/a319db890a12c4286643d2c317f75dc4.jpg"
  picar = Picture.new(catcher_id: ar.id)
  picar.remote_photo_url = urlar
  picar.save
urloa = "https://i.pinimg.com/564x/11/ef/1c/11ef1cd476ae54730d6d95b165b57f19.jpg"
picoa = Picture.new(catcher_id: oa.id)
picoa.remote_photo_url = urloa
picoa.save
  urlgd = "https://i.pinimg.com/564x/03/20/d2/0320d23dfb8a7a6959f2cdbf54707ed2.jpg"
  picgd = Picture.new(catcher_id: gd.id)
  picgd.remote_photo_url = urlgd
  picgd.save
urlpa = "https://i.pinimg.com/564x/03/20/d2/0320d23dfb8a7a6959f2cdbf54707ed2.jpg"
picpa = Picture.new(catcher_id: pa.id)
picpa.remote_photo_url = urlpa
picpa.save

# Story pics
# urlss = "https://i.pinimg.com/564x/a5/b5/31/a5b5313a44156f69ae9db37292393ca4.jpg"
# picss = Picture.new(destination_id: marrakech.id)
# picss.remote_photo_url = urlss
# picss.save

puts "Seeds are done!"
