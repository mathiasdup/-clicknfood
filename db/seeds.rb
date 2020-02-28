require "open-uri"
puts 'Cleaning database...'
User.destroy_all
Meal.destroy_all
Order.destroy_all

  azerty = User.new(
    username: "azerty",
    email: "azerty@test.com",
    address: "Lyon",
    password: "azerty"
  )
  azerty.save!

  qwerty = User.new(
    username: "qwerty",
    email: "qwerty@test.com",
    address: "Bristol",
    password: "qwerty",
  )
  qwerty.save!

  kevcha = User.new(
    username: "kevcha",
    email: "kevcha@test.com",
    address: "Saint-Etienne",
    password: "kevcha",
  )
  kevcha.save!

  benj = User.new(
    username: "benj",
    email: "benjamin@test.com",
    address: "Lyon",
    password: "benjamin",
  )
  benj.save!

  jojo = User.new(
    username: "jojo",
    email: "jojo@test.com",
    address: "Lyon",
    password: "jojojo",
  )
  jojo.save!


puts 'Creating meals...'
file_burritos = URI.open('https://assets.afcdn.com/recipe/20120924/25665_w1024h768c1cx256cy192.jpg')
  burritos = Meal.new(
    name: "Burritos",
    description: "Flour tortilla wrapped around beef, beans, guacamole, salsa sauce.",
    price: 40,
    location: "lyon",
    quantity: 4,
    category: "mexican",
    user: azerty
  )
  burritos.photo.attach(io: file_burritos, filename: 'burritos.jpg', content_type: 'image/jpg')
  burritos.save!

  file_guacamole = URI.open('https://assets.afcdn.com/recipe/20161118/23780_w648h414c1cx1275cy812.jpg')
  guacamole = Meal.new(
    name: "Guacamole",
    description: "Avocado lovers will be pleased",
    price: 20,
    location: "lyon",
    quantity: 6,
    category: "mexican",
    user: kevcha
  )
  guacamole.photo.attach(io: file_guacamole, filename: 'guacamole.jpg', content_type: 'image/jpg')
  guacamole.save!

  file_mbagel = URI.open('https://assets.afcdn.com/recipe/20180601/79377_w648h414c1cx2000cy3000cxt0cyt0cxb4000cyb6000.jpg')
  bagel = Meal.new(
    name: "Bagel",
    description: "Mexican Bagel with beef, beans, guacamole, salsa sauce",
    price: 8,
    location: "lyon",
    quantity: 1,
    category: "mexican",
    user: kevcha
  )
  bagel.photo.attach(io: file_mbagel, filename: 'bagel.jpg', content_type: 'image/jpg')
  bagel.save!

  file_curry = URI.open('https://assets.afcdn.com/recipe/20200107/106253_w648h414c1cx2000cy3000cxt0cyt0cxb4000cyb6000.jpg')
  curry = Meal.new(
    name: "Chicken curry",
    description: "yellow curry with chicken, very mild and delicious",
    price: 25,
    location: "lyon",
    quantity: 4,
    category: "indian",
    user: jojo
  )
  curry.photo.attach(io: file_curry, filename: 'curry.jpg', content_type: 'image/jpg')
  curry.save!

   file_naan = URI.open('https://assets.afcdn.com/recipe/20150217/16052_w648h414c1cx1028cy768.jpg')
  naan = Meal.new(
    name: "Cheese naan",
    description: "5 wonderful and tasteful cheese naans",
    price: 5,
    location: "lyon",
    quantity: 1,
    category: "indian",
    user: jojo
  )
  naan.photo.attach(io: file_naan, filename: 'naan.jpg', content_type: 'image/jpg')
  naan.save!

file_s = URI.open('https://assets.afcdn.com/recipe/20131024/35927_w648h414c1cx1632cy2464.jpg')
 sushi = Meal.new(
    name: "Sushi",
    description: "Vinegar rice with salmon or shrimps",
    price: 80,
    location: "lyon",
    category: "japanese",
    quantity: 9,
    user: azerty
  )
  sushi.photo.attach(io: file_s, filename: 'sushi.jpg', content_type: 'image/jpg')
  sushi.save!

  file_yakitori = URI.open('https://assets.afcdn.com/recipe/20150221/57033_w648h414c1cx1494cy1419.jpg')
 yakitori = Meal.new(
    name: "Yakitori chicken",
    description: "japanese chicken sweet and salty",
    price: 30,
    location: "lyon",
    category: "japanese",
    quantity: 4,
    user: azerty
  )
  yakitori.photo.attach(io: file_yakitori, filename: 'yakitori.jpg', content_type: 'image/jpg')
  yakitori.save!

  file_gyoza = URI.open('https://assets.afcdn.com/recipe/20131025/63300_w648h414c1cx1936cy1296.jpg')
 gyoza = Meal.new(
    name: "Gyoza",
    description: "the true japanese ravioli",
    price: 20,
    location: "lyon",
    category: "japanese",
    quantity: 2,
    user: azerty
  )
  gyoza.photo.attach(io: file_gyoza, filename: 'gyoza.jpg', content_type: 'image/jpg')
  gyoza.save!

  file_maki = URI.open('https://assets.afcdn.com/recipe/20191129/103216_w648h414c1cx957cy717cxt0cyt0cxb1914cyb1435.jpeg')
 maki = Meal.new(
    name: "Flower Maki",
    description: "Be fond of these beautiiiiful flower makis",
    price: 40,
    location: "lyon",
    category: "japanese",
    quantity: 4,
    user: azerty
  )
  maki.photo.attach(io: file_maki, filename: 'maki.jpg', content_type: 'image/jpg')
  maki.save!

file_bu = URI.open('https://assets.afcdn.com/recipe/20171016/73221_w648h414c1cx2000cy3000cxt0cyt0cxb4000cyb6000.jpg')
 burger = Meal.new(
    name: "Coquilette Burger",
    description: "Beef burger with Coquilette pasta tomato, cheddar and fried onions",
    price: 10,
    location: "lyon",
    category: "french",
    quantity: 1,
    user: qwerty
  )
  burger.photo.attach(io: file_bu, filename: 'burger.jpg', content_type: 'image/jpg')
  burger.save!

  file_vbu = URI.open('https://assets.afcdn.com/recipe/20190320/89715_w648h414c1cx2808cy1872cxt0cyt0cxb5608cyb3741.jpg')
 vburger = Meal.new(
    name: "Vegan Burger",
    description: "Vegan burger for vegans with tomato, cheddar and fried onions",
    price: 10,
    location: "lyon",
    category: "french",
    quantity: 1,
    user: qwerty
  )
  vburger.photo.attach(io: file_vbu, filename: 'vburger.jpg', content_type: 'image/jpg')
  vburger.save!

file_ch = URI.open('https://assets.afcdn.com/recipe/20130627/31106_w648h414c1cx1000cy1052.jpg')
 chocolate = Meal.new(
    name: "Chocolate cake",
    description: "Delicious chocolate cake and mousse, it is heaven for you tongue!",
    price: 5,
    location: "lyon",
    category: "french",
    quantity: 1,
    user: kevcha
  )
  chocolate.photo.attach(io: file_ch, filename: 'chocolate.jpg', content_type: 'image/jpg')
  chocolate.save!

  file_haricot = URI.open('https://assets.afcdn.com/recipe/20170606/62545_w648h414c1cx2517cy1678.jpg')
 haricot = Meal.new(
    name: "Green Haricots",
    description: "Eat green ! Eat french Haricots Verts !",
    price: 80,
    location: "lyon",
    category: "french",
    quantity: 10,
    user: jojo
  )
  haricot.photo.attach(io: file_haricot, filename: 'haricot.jpg', content_type: 'image/jpg')
  haricot.save!

  file_caramel = URI.open('https://assets.afcdn.com/recipe/20161219/61263_w648h414c1cx2404cy1824.jpg')
 caramel = Meal.new(
    name: "Caramel",
    description: "Delicious caramel dessert, sweet and salty caramel",
    price: 10,
    location: "lyon",
    category: "french",
    quantity: 4,
    user: jojo
  )
  caramel.photo.attach(io: file_caramel, filename: 'caramel.jpg', content_type: 'image/jpg')
  caramel.save!

file_ph = URI.open('https://assets.afcdn.com/recipe/20170505/13301_w648h414c1cx1779cy2278.jpg')
 pho = Meal.new(
    name: "Pho",
    description: "Spice your usual soup with this vietnamese specialty",
    price: 20,
    location: "lyon",
    category: "vietnamese",
    quantity: 2,
    user: jojo
  )
  pho.photo.attach(io: file_ph, filename: 'pho.jpg', content_type: 'image/jpg')
  pho.save!

  file_vietsalad = URI.open('https://assets.afcdn.com/recipe/20150803/5728_w648h414c1cx1819cy1806.jpg')
 vietsalad = Meal.new(
    name: "Vietnamese Salad",
    description: "Healthy and seductive salad, without meat!",
    price: 80,
    location: "lyon",
    category: "vietnamese",
    quantity: 4,
    user: benj
  )
  vietsalad.photo.attach(io: file_vietsalad, filename: 'vietsalad.jpg', content_type: 'image/jpg')
  vietsalad.save!

  file_tofu = URI.open('https://assets.afcdn.com/recipe/20150831/931_w648h414c1cx2808cy1872.jpg')
 tofu = Meal.new(
    name: "Marinated Tofu",
    description: "Remove meat from your life",
    price: 8,
    location: "lyon",
    category: "vietnamese",
    quantity: 1,
    user: benj
  )
  tofu.photo.attach(io: file_tofu, filename: 'tofu.jpg', content_type: 'image/jpg')
  tofu.save!

file_pi = URI.open('https://assets.afcdn.com/recipe/20171206/75873_w648h414c1cx2456cy1632cxt0cyt0cxb4912cyb3264.jpg')
 pizza = Meal.new(
    name: "Pizza",
    description: "Delicious tomato and mozzarella pizza",
    price: 20,
    location: "Milano",
    category: "italian",
    quantity: 6,
    user: kevcha
  )
  pizza.photo.attach(io: file_pi, filename: 'pizza.jpg', content_type: 'image/jpg')
  pizza.save!

  file_piv = URI.open('https://assets.afcdn.com/recipe/20160531/11743_w648h414c1cx2000cy3000.jpg')
 pizzav = Meal.new(
    name: "Vegan Pizza",
    description: "Delicious tomato and mozzarella pizza",
    price: 20,
    location: "lyon",
    category: "italian",
    quantity: 6,
    user: kevcha
  )
  pizzav.photo.attach(io: file_piv, filename: 'pizzav.jpg', content_type: 'image/jpg')
  pizzav.save!

  file_pana = URI.open('https://assets.afcdn.com/recipe/20170905/71705_w648h414c1cx1411cy4176cxt0cyt0cxb3999cyb6000.jpg')
 pana = Meal.new(
    name: "Pana Cotta",
    description: "Italian dessert with raspberry coulis",
    price: 10,
    location: "lyon",
    category: "italian",
    quantity: 2,
    user: kevcha
  )

  pana.photo.attach(io: file_pana, filename: 'pana.jpg', content_type: 'image/jpg')
  pana.save!

  file_tab = URI.open('https://assets.afcdn.com/recipe/20190704/94650_w648h414c1cx3288cy2192cxt0cyt0cxb6577cyb4384.jpg')
 tab = Meal.new(
    name: "Taboulé",
    description: "Libanese taboulé with persil",
    price: 30,
    location: "lyon",
    category: "lebanese",
    quantity: 4,
    user: jojo
  )
  tab.photo.attach(io: file_tab, filename: 'tab.jpg', content_type: 'image/jpg')
  tab.save!

  file_humus = URI.open('https://assets.afcdn.com/recipe/20170905/71705_w648h414c1cx1411cy4176cxt0cyt0cxb3999cyb6000.jpg')
 humus = Meal.new(
    name: "Hummus",
    description: "Hummus with chickpeas, mild and sweet",
    price: 20,
    location: "narbonne",
    category: "lebanese",
    quantity: 5,
    user: jojo
  )
  humus.photo.attach(io: file_humus, filename: 'humus.jpg', content_type: 'image/jpg')
  humus.save!

    file_buffet = URI.open('https://www.lesgrandsbuffets.com/sites/lesgrandsbuffets.com/files/styles/content_slider_mobile/public/field/page/content_img_mobile/rotisserie.jpg?itok=dlfJgqNw')
 buffet = Meal.new(
    name: "Grands buffets de Narbonne",
    description: "Buffet semi gastro à volonté, A PROGRAMMER !",
    price: 39,
    location: "narbonne",
    category: "french",
    quantity: 1,
    user: azerty
  )
  buffet.photo.attach(io: file_buffet, filename: 'buffet.jpg', content_type: 'image/jpg')
  buffet.save!




  puts 'Creating order...'
  order_sushi_qwerty = Order.new(
    user: qwerty,
    meal: sushi
  )
  order_sushi_qwerty.save!

  order_humus_kevcha = Order.new(
    user: kevcha,
    meal: humus
  )
  order_humus_kevcha.save!

  order_haricot_benj = Order.new(
    user: benj,
    meal: haricot
  )
  order_haricot_benj.save!




  puts "creating reviews...."


  Review.create!({
    user: benj,
    content: 'trop cool',
    rating: 5
  })

  Review.create!({
    user: jojo,
    content: 'bof bof',
    rating: 3
  })

  Review.create!({
    user: benj,
    content: 'bif bof',
    rating: 3
  })

  Review.create!({
    user: benj,
    content: 'pas mal du tout',
    rating: 5
  })



puts 'Finished!'
