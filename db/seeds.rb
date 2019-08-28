# Clean database
require 'date'
Trip.destroy_all
Destination.destroy_all
Message.destroy_all
Conversation.destroy_all
Catcher.destroy_all
# Story.destroy_all

# Create Users

jd = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'Gibbon', first_name: 'Karl', last_name: 'Paddington', gender: 'Man', hobbies: 'Cooking', occupation: 'Scultor', past_destinations: 'Australia, Argentina, Budapest, Cluj, Nevada', description: "I am a big fan of art in all its aspects. Absolutely love music but pretty much no modern pop thanks. Rock and roll, blues, bluegrass, world music, a mixed bag really. Started doing yoga a month ago and love it. I have two Jack Russell dogs. I live in a 2 bedroom, beautiful old stone house in Galway - Ireland, and it is here I have my business as a stone sculptor. I have a shop/showrooms and workshop.")
ar = Catcher.create!(email: 'ar@doe.com', password: 'qwerty', user_name: 'Andrea', first_name: 'Andrea', last_name: 'Blum', gender: 'Woman', hobbies: 'Running', occupation: 'Vet', past_destinations: 'Ibiza, Morocco, Egypt, Stockholm', description: "The years, they keep passing, I've been around the world a bit and back, would like to go another way next time. I'm into a lot of different things. Nature being high on the list. Mountains, fresh water in all its forms and being in or on those environments in a variety of ways from hiking, fishing, mountain biking, white water kayaking so on and so forth. I read a fair bit. Factual adventure type stuff, classic literature, and a bit of fiction.")
oa = Catcher.create!(email: 'oa@doe.com', password: 'qwerty', user_name: 'Stardust', first_name: 'Teddy', last_name: 'Larson', gender: 'Man', hobbies: 'Video games', occupation: 'Steward', past_destinations: 'Finland, Russia, Shangai, Singapore', description: "Traveling is a fun experience. Seeing the world with your friends, family, or even on your own can rejuvenate your soul and expand your horizons. No matter where you’re going through, there are some unconventional tips and tricks that can make for an unforgettable experience, or even save you from a potentially bad time.")
gd = Catcher.create!(email: 'gd@doe.com', password: 'qwerty', user_name: 'Reese', first_name: 'Ghizlane', last_name: 'Derdabi', gender: 'Woman', hobbies: 'Dancing', occupation: 'Brand Manager', past_destinations: 'Alaska, South Africa, Sudan, Iran', description: "I'm an easy goin person, I just finished an intensive course of coding, it was basically a bootcamp. And all i need now is to have a beautiful travelling experience.")
pa = Catcher.create!(email: 'hamza@doe.com', password: 'qwerty', user_name: 'Hamza', first_name: 'Hamza', last_name: 'Newman', gender: 'Man', birth_date: '01/02/70', occupation: 'Teacher', past_destinations: 'Paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
jr = Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'Sofia', first_name: 'Sofia', last_name: 'Doe', gender: 'Woman', birth_date: '01/02/70', occupation: 'Traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
ab = Catcher.create!(email: 'adri@doe.com', password: 'qwerty', user_name: 'Adria', first_name: 'Adria', last_name: 'Newman', gender: 'Woman', birth_date: '01/02/70', occupation: 'Owner', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
bw = Catcher.create!(email: 'ben@doe.com', password: 'qwerty', user_name: 'Ben', first_name: 'Benjamin', last_name: 'Wagon', gender: 'Man', birth_date: '01/02/70', occupation: 'Cop', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
ba = Catcher.create!(email: 'bas@doe.com', password: 'qwerty', user_name: 'Basil', first_name: 'Basil', last_name: 'Newman', gender: 'Man', birth_date: '01/02/70', occupation: 'Cook', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
bw = Catcher.create!(email: 'car@doe.com', password: 'qwerty', user_name: 'Carla', first_name: 'Carla', last_name: 'Wagon', gender: 'Woman', birth_date: '01/02/70', occupation: 'Aviator', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")

jd = Catcher.create!(email: 'john@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'Man', hobbies: 'Cooking')
ar = Catcher.create!(email: 'ar@doe.com', password: 'qwerty', user_name: 'Andrea', first_name: 'Andrea',  last_name: 'Rhiel', gender: 'woman', hobbies: 'Running')
oa = Catcher.create!(email: 'oa@doe.com', password: 'qwerty', user_name: 'Stardust', first_name: 'Omar',  last_name: 'Azzouzi', gender: 'Man', hobbies: 'Video games')
gd = Catcher.create!(email: 'gd@doe.com', password: 'qwerty', user_name: 'Reese', first_name: 'Ghizlane',  last_name: 'Derdabi', gender: 'woman', hobbies: 'Dancing')
pa = Catcher.create!(email: 'paul@doe.com', password: 'qwerty', user_name: 'Paul', first_name: 'Paul',  last_name: 'Newman', gender: 'man', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")
jd1 = Catcher.create!(email: 'john1@doe.com', password: 'qwerty', user_name: 'Johnny', first_name: 'John',  last_name: 'Doe', gender: 'man', birth_date: '01/02/70', occupation: 'traveller', past_destinations: 'paris, london', hobbies: 'blabla', description: "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).")

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
  urljr = "https://i.pinimg.com/564x/d2/84/b3/d284b31ee8f45b7a984cddbd70481f16.jpg"
  picjr = Picture.new(catcher_id: jr.id)
  picjr.remote_photo_url = urljr
  picjr.save
urlab = "https://i.pinimg.com/564x/d5/ec/ba/d5ecbacca1244aa3f81a8779e6945b71.jpg"
picab = Picture.new(catcher_id: ab.id)
picab.remote_photo_url = urlab
picab.save
  urlbw = "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
  picbw = Picture.new(catcher_id: bw.id)
  picbw.remote_photo_url = urlbw
  picbw.save
urlba = "https://i.pinimg.com/564x/d4/ea/4b/d4ea4b308a9ed8b3d55c2fd350a15e6a.jpg"
picba = Picture.new(catcher_id: ba.id)
picba.remote_photo_url = urlba
picba.save
  urlab = "https://i.pinimg.com/564x/67/ce/8b/67ce8b93078eb74c73ed31424e89440a.jpg"
  picab = Picture.new(catcher_id: ab.id)
  picab.remote_photo_url = urlab
  picab.save

# Create Destinations
hanoi = Destination.create!(location: 'Hanoi', description: 'cosmo',price: 700, recommendation:"Don't miss the salt church")
bogota = Destination.create!(location: 'Bogota', description: 'place to be',price: 75, recommendation:'Reach Monserrate')
marrakech = Destination.create!(location: 'Marrakech', description: 'Hot city, full of diversity', price: 90, recommendation:'Reach the summit of Morocco at only few miles from the town')
london = Destination.create!(location: 'London', description: 'cool', price: 90, recommendation:'Go to see Tower of London')
paris = Destination.create!(location: 'Paris', description: 'beautiful', price: 85, recommendation:'Go to see Eiffel Tower')
berlin = Destination.create!(location: 'Berlin', description: 'street art', price: 70, recommendation:'Go to see Brandenburg Gate')
boston = Destination.create!(location: 'Boston', description: 'Cosmopolitan town',price: 700, recommendation:"")
havana = Destination.create!(location: 'Havana', description: 'mesmerizing',price: 1000, recommendation:"go check la Habna vieja")
alexandria = Destination.create!(location: 'Alexandria', description: 'Adventure calls',price: 800, recommendation:"nice place to see Montaza Palace")
casablanca = Destination.create!(location: 'Casablanca', description: 'place to be',price: 75, recommendation:'Go to see Hassan II Mosque')
phuket = Destination.create!(location: 'Phuket', description: 'the pearl on the beach',price: 1200, recommendation:"amazing beaches to visit and phuket town")

# Create Favorites
favourites = Favourite.create!(catcher_id: jd.id, destination_id:marrakech.id)

# Destination pics
urlmarr = "https://i.le360.ma/fr/sites/default/files/styles/asset_image_in_body/public/assets/images/2019/04/marrakech_place.jpg"
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
  urlb1 = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/05/11/10/hanoi-main.jpg?w968h681"
  picb1 = Picture.new(destination_id: hanoi.id)
  picb1.remote_photo_url = urlb1
  picb1.save
urlb2 = "https://lesvolsdalexi.s3.ca-central-1.amazonaws.com/blog/20190710134812/hanoi-cover-1152x605.jpg"
picb2 = Picture.new(destination_id: hanoi.id)
picb2.remote_photo_url = urlb2
picb2.save

url1casa = "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/c3/ff/e0.jpg"
pic1casa = Picture.new(destination_id:casablanca.id)
pic1casa.remote_photo_url = url1casa
pic1casa.save
  url2casa = "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/d8/6c.jpg"
  pic2casa = Picture.new(destination_id:casablanca.id)
  pic2casa.remote_photo_url = url2casa
  pic2casa.save
url3casa = "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/c3/ff/de.jpg"
pic3casa = Picture.new(destination_id:casablanca.id)
pic3casa.remote_photo_url = url3casa
pic3casa.save

url1bog = "https://breathelife2030.org/wp-content/uploads/2019/05/Bogota_Candelaria.jpg"
pic1bog = Picture.new(destination_id:bogota.id)
pic1bog.remote_photo_url = url1bog
pic1bog.save
  url2bog = "https://lonelyplanetwp.imgix.net/2019/01/La-Candelaria_historytour_Bogota-57085b2389ee.jpg?fit=min&q=40&sharp=10&vib=20&w=1470"
  pic2bog = Picture.new(destination_id:bogota.id)
  pic2bog.remote_photo_url = url2bog
  pic2bog.save
url3bog = "https://i1.wp.com/www.sinaloa360.com/wp-content/uploads/2016/08/cerro-de-monserrate-1.jpg?w=640&ssl=1"
pic3bog = Picture.new(destination_id:bogota.id)
pic3bog.remote_photo_url = url3bog
pic3bog.save

url1bos = "https://www.intercontinentalboston.com/resourcefiles/mainimages/boston-massachusetts-faneuil-hall-marketplace-top.jpg"
pic1bos = Picture.new(destination_id:boston.id)
pic1bos.remote_photo_url = url1bos
pic1bos.save
  url2bos = "https://voyages.michelin.fr/sites/default/files/styles/poi_slideshow_big/public/images/travel_guide/NX-36724.jpg?itok=Vbhhl0u-"
  pic2bos = Picture.new(destination_id:boston.id)
  pic2bos.remote_photo_url = url2bos
  pic2bos.save
url3bos = "https://www.gannett-cdn.com/presto/2019/01/15/USAT/0ecbdeee-08b3-4221-8e85-963d4f8c936a-GettyImages-885436304.jpg"
pic3bos = Picture.new(destination_id:boston.id)
pic3bos.remote_photo_url = url3bos
pic3bos.save

url3hav = "https://www.eldesconcierto.cl/wp-content/uploads/2017/11/oldhavana4.jpg"
pic3hav = Picture.new(destination_id:havana.id)
pic3hav.remote_photo_url = url3hav
pic3hav.save

url3al = "https://www.universports.net/wp-content/uploads/2019/06/ALEXANDRIE.jpg"
pic3al = Picture.new(destination_id:alexandria.id)
pic3al.remote_photo_url = url3al
pic3al.save

url3ph = "https://d2p1cf6997m1ir.cloudfront.net/media/c83opt/74/5c/745c0cbd8c6e8e75a4ec5c280f73a280.jpg"
pic3ph = Picture.new(destination_id:phuket.id)
pic3ph.remote_photo_url = url3ph
pic3ph.save
  url3p2 = "http://www.phuketsrctravel.com/photo/tour/1524553470_14.jpg"
  pic3p2 = Picture.new(destination_id:phuket.id)
  pic3p2.remote_photo_url = url3p2
  pic3p2.save
url3pp = "https://dak95nwic4sny.cloudfront.net/73/phuket-40161928-1481624817-ImageGalleryLightboxLarge.jpg"
pic3pp = Picture.new(destination_id:phuket.id)
pic3pp.remote_photo_url = url3pp
pic3pp.save

# Story pics
# urlss = "https://i.pinimg.com/564x/a5/b5/31/a5b5313a44156f69ae9db37292393ca4.jpg"
# picss = Picture.new(destination_id: marrakech.id)
# picss.remote_photo_url = urlss
# picss.save

puts "Seeds are done!"
