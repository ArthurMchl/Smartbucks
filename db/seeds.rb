# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '---- Delete all items in database ----'
Order.destroy_all
Voucher.destroy_all
Brand.destroy_all
User.destroy_all

puts '---- Seed model User (4 instances) ----'

micka = User.create!(
  email: 'mika@gmail.com',
  password: 'azerty'
)

pierre = User.create!(
  email: 'pierre@gmail.com',
  password: 'azerty'
)

arthur = User.create!(
  email: 'arthur@gmail.com',
  password: 'azerty'
)

werner = User.create!(
  email: 'werner@gmail.com',
  password: 'azerty'
)

puts '----Seed User OK ------'

puts '----Seed model Brand (24 instances)------'

decathlon = Brand.create!(


  name: 'Decathlon',
  color: '#0082C3',
  logo: 'https://www.decathlon.fr/assets/images/decathlon-logo.svg'
)

fnac = Brand.create!(


  name: 'Fnac',
  color: '#FEB300',
  logo: 'https://pic.clubic.com/v1/images/1748926/raw'
)

cheque_vacance = Brand.create!(


  name: 'Chèque-Vacances',
  color: '#33348E',
  logo: 'https://cdn.worldvectorlogo.com/logos/ancv-cheque-vacances.svg'
)

h_m = Brand.create!(


  name: 'H&M',
  color: '#FF0025',
  logo: 'http://tous-logos.com/wp-content/uploads/2018/07/Symbole-HM.jpg'
)

smartbox = Brand.create!(


  name: 'Smartbox',
  color: '#646464',
  logo: 'http://discount-extreme.com/wp-content/uploads/2016/12/Smartbox-Logo.jpg'
)

spotify = Brand.create!(


  name: 'Spotify',
  color: '#1A1414',
  logo: 'https://images.idgesg.net/images/article/2018/11/spotify-logo-100779042-large.3x2.jpg'
)

apple = Brand.create!(


  name: 'Apple',
  color: '#0E0D09',
  logo: 'https://www.caminteresse.fr/content/uploads/2011/10/Logo-Apple-604.jpg'
)


nike = Brand.create!(


  name: 'Nike',
  color: '#000000',
  logo: 'https://www.episod.com/wp-content/uploads/2019/04/b2b-logo-nike.jpg'
)


adidas = Brand.create!(


  name: 'Adidas',
  color: '#0084D6',
  logo: 'https://i.pinimg.com/originals/07/2f/fd/072ffddbcb037a91cc782cf3b6d8ad0f.jpg'
)

google = Brand.create!(


  name: 'Google Play',
  color: '#000000',
  logo: 'https://i.gadgets360cdn.com/large/google_play_1559395346287.jpg'
)

uniqlo = Brand.create!(


  name: 'Uniqlo',
  color: '#E7000A',
  logo: 'https://upload.wikimedia.org/wikipedia/fr/thumb/f/f1/Logo_Uniqlo.svg/1200px-Logo_Uniqlo.svg.png'
)

printemps = Brand.create!(


  name: 'Printemps',
  color: '#020202',
  logo: 'https://s3-eu-west-1.amazonaws.com/eu-static.italiedeux.com/Live/ResizedImages/Store%20Logos/ivwjz4v5kmy/Store_Detail/printemps-noir-logo-resize.png'
)

ikea = Brand.create!(


  name: 'Ikea',
  color: '#003399',
  logo: 'https://www.creads.fr/app/uploads/sites/1/2017/02/2000px-ikea_logo.svg_.png'
)

auchan = Brand.create!(

  name: 'Auchan',
  color: '#CC2131',
  logo: 'https://img.argentdubeurre.com/content/5551/illustration/auchan-100-rembourse-4.jpg'
)

cultura = Brand.create!(

  name: 'Cultura',
  color: '#00447E',
  logo: 'https://upload.wikimedia.org/wikipedia/fr/thumb/e/e1/Logo_Cultura.svg/1200px-Logo_Cultura.svg.png'
)

darty = Brand.create!(

  name: 'Darty',
  color: '#DF271F',
  logo: 'https://media.begeek.fr/2019/03/Darty-Large-Logo.jpg'
)

go_sport = Brand.create!(

  name: 'Go Sport',
  color: '#010101',
  logo: 'https://www.lsa-conso.fr/mediatheque/1/7/6/000187671_5.jpg'
)

wonderbox = Brand.create!(

  name: 'Wonderbox',
  color: '#000000',
  logo: 'https://www.a-d-a-s.fr/wp-content/uploads/2015/06/Logo-wonderbox-blanc-fond-noir-HD-1030x408.png'
)

nocibe = Brand.create!(

  name: 'Nocibé',
  color: '#D10041',
  logo: "https://www.galerie-saintmedard.com/wp-content/uploads/2019/02/Nocib%C3%A9.jpg"
)

loreal = Brand.create!(

  name: "L'Oréal",
  color: '#000000',
  logo: "https://i.pinimg.com/originals/ec/25/31/ec253145f67cf3ef95ee2d45d2172c32.png"
)

flunch = Brand.create!(

  name: "Flunch",
  color: '#E3001B',
  logo: "https://www.salanca.com/wp-content/uploads/sites/47/2015/02/logo-Flunch.jpg"
)

mcdo = Brand.create!(

  name: "McDonald's",
  color: '#1F532F',
  logo: "https://img.bfmtv.com/c/700/698/3fa/72bc55c499738715cb3d2dcbef70c.png"
)

bking = Brand.create!(

  name: "Burger King",
  color: '#000000',
  logo: "https://i.ytimg.com/vi/DVpbSc710Rc/maxresdefault.jpg"
)

bgrill = Brand.create!(

  name: "Buffalo Grill",
  color: '#BE0419',
  logo: "https://www.hautbugey-tourisme.com/wp-content/uploads/wpetourisme/1452273-diaporama.jpg"
)


puts '-----------Seed Brand OK---------'

puts '----Seed model Voucher (29 instances)------'

decathlon_50 = Voucher.create!(
  value: 50,
  price: 40,
  end_date: Time.new(2019, 12, 31, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '01234567',
  brand_id: decathlon.id,
  user_id:  pierre.id
)

decathlon_100 = Voucher.create!(


  value:    100,
  price:    75,
  end_date: Time.new(2020, 01, 31, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '86988565',
  brand_id: decathlon.id,
  user_id:  arthur.id
 )

smartbox_80 = Voucher.create!(


  value:    80,
  price:    60,
  end_date: Time.new(2020, 01, 31, 0, 0, 0, '+02:00'),
  category: 'Coffret Cadeau',
  bar_code: '62503205',
  brand_id: smartbox.id,
  user_id:  micka.id
)

h_m_50 = Voucher.create!(


  value:    50,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: h_m.id,
  user_id:  micka.id
)

fnac_150 = Voucher.create!(


  value:    150,
  price:    100,
  end_date: Time.new(2020, 10, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '85640548',
  brand_id: fnac.id,
  user_id:  micka.id
)

cheque_vacance_500 = Voucher.create!(


  value: 500,
  price: 350,
  end_date: Time.new(2020, 12, 31, 0, 0, 0, '+02:00'),
  category: 'Chèque Cadeau',
  bar_code: '18454810',
  brand_id: cheque_vacance.id,
  user_id:  werner.id
)


spotify_40 = Voucher.create!(


  value:    40,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: spotify.id,
  user_id:  micka.id
)

apple_40 = Voucher.create!(


  value:    40,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: apple.id,
  user_id:  micka.id
)



spotify_50 = Voucher.create!(


  value:    50,
  price:    40,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: spotify.id,
  user_id:  micka.id
)

adidas_50 = Voucher.create!(


  value:    50,
  price:    40,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: adidas.id,
  user_id:  micka.id
)


nike_75 = Voucher.create!(


  value:    75,
  price:    60,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: nike.id,
  user_id:  micka.id
)



google_40 = Voucher.create!(


  value:    40,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: google.id,
  user_id:  micka.id
)


uniqlo_60 = Voucher.create!(


  value:    60,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: uniqlo.id,
  user_id:  micka.id
)


printemps_100 = Voucher.create!(


  value:    100,
  price:    80,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: printemps.id,
  user_id:  micka.id
)


ikea_300 = Voucher.create!(


  value:    300,
  price:    150,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: ikea.id,
  user_id:  pierre.id
)

ikea_50 = Voucher.create!(


  value:    50,
  price:    30,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: ikea.id,
  user_id:  pierre.id
)

auchan_30 = Voucher.create!(


  value:    30,
  price:    26,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: auchan.id,
  user_id:  pierre.id
)

cultura_30 = Voucher.create!(


  value:    30,
  price:    15,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Chèque Cadeau',
  bar_code: '60328438',
  brand_id: cultura.id,
  user_id:  pierre.id
)

cultura_80 = Voucher.create!(


  value:    80,
  price:    55,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Chèque Cadeau',
  bar_code: '60328438',
  brand_id: cultura.id,
  user_id:  pierre.id
)


darty_30 = Voucher.create!(


  value:    30,
  price:    20,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: darty.id,
  user_id:  pierre.id
)

go_sport_30 = Voucher.create!(


  value:    30,
  price:    20,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: go_sport.id,
  user_id:  micka.id
)


wonderbox_60 = Voucher.create!(


  value:    60,
  price:    50,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Coffret Cadeau',
  bar_code: '60328438',
  brand_id: wonderbox.id,
  user_id:  micka.id
)

wonderbox_100 = Voucher.create!(


  value:    100,
  price:    80,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Coffret Cadeau',
  bar_code: '60328438',
  brand_id: wonderbox.id,
  user_id:  pierre.id
)

nocibe_50 = Voucher.create!(


  value:    50,
  price:    40,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: nocibe.id,
  user_id:  micka.id
)

loreal_50 = Voucher.create!(


  value:    50,
  price:    45,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: loreal.id,
  user_id:  micka.id
)


flunch_10 = Voucher.create!(


  value:    10,
  price:    8,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: flunch.id,
  user_id:  micka.id
)


mcdo_20 = Voucher.create!(


  value:    20,
  price:    16,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: mcdo.id,
  user_id:  micka.id
)


bking_20 = Voucher.create!(


  value:    20,
  price:    13,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: bking.id,
  user_id:  pierre.id
)


bgrill_30 = Voucher.create!(


  value:    30,
  price:    18,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Carte Cadeau',
  bar_code: '60328438',
  brand_id: bgrill.id,
  user_id:  pierre.id
)

puts '-----------Seed Voucher OK---------'
puts '-----------Seed Voucher OK------'
