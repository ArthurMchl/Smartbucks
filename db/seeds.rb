# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '---- Delete all items in database ----'
Brand.destroy_all
Voucher.destroy_all
Order.destroy_all
User.destroy_all
​
puts '---- Seed model User (4 instances) ----'
​
micka = User.create!(
  email: 'mika@gmail.com',
  password: 'azerty'
)
​
pierre = User.create!(
  email: 'pierre@gmail.com',
  password: 'azerty'
)
​
arthur = User.create!(
  email: 'arthur@gmail.com',
  password: 'azerty'
)
​
werner = User.create!(
  email: 'werner@gmail.com',
  password: 'azerty'
)
​
puts '----Seed User OK ------'
​
puts '----Seed model Brand (5 instances)------'
​
decathlon = Brand.create!(
  name: 'Decathlon',
  color: '#0082C3',
  logo: 'https://www.decathlon.fr/assets/images/decathlon-logo.svg'
)
​
fnac = Brand.create!(
  name: 'Fnac',
  color: '#EBB300',
  logo: 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Fnac_Logo.svg'
)
​
cheque_vacance = Brand.create!(
  name: 'Chèque-Vacances',
  color: 'white',
  logo: 'https://www.ancv.com/sites/default/files/ancv_logo_cheque-vacances_4c.jpg'
)
​
h_m = Brand.create!(
  name: 'H&M',
  color: '#FF0025',
  logo: 'http://tous-logos.com/wp-content/uploads/2018/07/Symbole-HM.jpg'
)
​
smartbox = Brand.create!(
  name: 'Smartbox',
  color: '#646464',
  logo: 'http://discount-extreme.com/wp-content/uploads/2016/12/Smartbox-Logo.jpg'
)
​
puts '-----------Seed Brand OK---------'
​
puts '----Seed model Voucher (6 instances)------'
​
decathlon_50 = Voucher.create!(
  value: 50,
  price: 40,
  end_date: Time.new(2019, 12, 31, 0, 0, 0, '+02:00'),
  category: 'Carte cadeau',
  bar_code: '01234567',
  brand_id: decathlon.id,
  user_id:  pierre.id
)
​
decathlon_100 = Voucher.create!(
  value:    100,
  price:    75,
  end_date: Time.new(2020, 01, 31, 0, 0, 0, '+02:00'),
  category: 'Carte cadeau',
  bar_code: '86988565',
  brand_id: decathlon.id,
  user_id:  arthur.id
)
​
smartbox_80 = Voucher.create!(
  value:    80,
  price:    60,
  end_date: Time.new(2020, 01, 31, 0, 0, 0, '+02:00'),
  category: 'Coffret cadeau',
  bar_code: '62503205',
  brand_id: smartbox.id,
  user_id:  micka.id
)
​
h_m_50 = Voucher.create!(
  value:    50,
  price:    35,
  end_date: Time.new(2020, 02, 15, 0, 0, 0, '+02:00'),
  category: 'Avoir',
  bar_code: '60328438',
  brand_id: h_m.id,
  user_id:  micka.id
)
​
fnac_150 = Voucher.create!(
  value:    150,
  price:    100,
  end_date: Time.new(2020, 10, 15, 0, 0, 0, '+02:00'),
  category: 'Carte cadeau',
  bar_code: '85640548',
  brand_id: h_m.id,
  user_id:  micka.id
)
​
cheque_vacance_500 = Voucher.create!(
  value: 500,
  price: 350,
  end_date: Time.new(2020, 12, 31, 0, 0, 0, '+02:00'),
  category: 'Chèque cadeau',
  bar_code: '18454810',
  brand_id: h_m.id,
  user_id:  werner.id
)
​
puts '-----------Seed Voucher OK'
