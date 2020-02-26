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
    address: "St Etienne",
    password: "kevcha",
  )
  kevcha.save!


puts 'Creating meals...'
file_b = URI.open('https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?cs=srgb&dl=aliments-burrito-citron-vert-dejeuner-461198.jpg&fm=jpg')
  burritos = Meal.new(
    name: "Burritos",
    description: "Flour tortilla wrapped around beef, beans, guacamole, salsa sauce.",
    price: 40,
    location: "lyon",
    quantity: 4,
    category: "mexican",
    user: azerty
  )
  burritos.photo.attach(io: file_b, filename: 'burritos.jpg', content_type: 'image/jpg')
  burritos.save!

file_s = URI.open('https://images.pexels.com/photos/1148086/pexels-photo-1148086.jpeg?cs=srgb&dl=aliments-bokeh-bon-vivant-brouiller-1148086.jpg&fm=jpg')
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

file_bu = URI.open('https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?cs=srgb&dl=burger-collation-delicieux-en-cas-1639565.jpg&fm=jpg')
 burger = Meal.new(
    name: "Burger",
    description: "Beef burger with tomato, cheddar and fried onions",
    price: 10,
    location: "New York",
    category: "french",
    quantity: 1,
    user: qwerty
  )
  burger.photo.attach(io: file_bu, filename: 'burger.jpg', content_type: 'image/jpg')
  burger.save!

file_ch = URI.open('https://images.pexels.com/photos/3734026/pexels-photo-3734026.jpeg?cs=srgb&dl=cafeine-cafe-tasse-cappuccino-3734026.jpg&fm=jpg')
 chocolate = Meal.new(
    name: "Chocolate cake",
    description: "Delicious chocolate cake and mousse, it is heaven for you tongue!",
    price: 5,
    location: "Dijon",
    category: "french",
    quantity: 1,
    user: kevcha
  )
  chocolate.photo.attach(io: file_ch, filename: 'chocolate.jpg', content_type: 'image/jpg')
  chocolate.save!

file_ph = URI.open('https://images.pexels.com/photos/1001773/pexels-photo-1001773.jpeg?cs=srgb&dl=aliments-assiette-basilic-carotte-1001773.jpg&fm=jpg')
 pho = Meal.new(
    name: "Pho",
    description: "Spice your usual soup with this vietnamese specialty",
    price: 20,
    location: "lyon",
    category: "viet",
    quantity: 2,
    user: qwerty
  )
  pho.photo.attach(io: file_ph, filename: 'pho.jpg', content_type: 'image/jpg')
  pho.save!

file_pi = URI.open('https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg?cs=srgb&dl=aliments-croute-dejeuner-delicieux-2619967.jpg&fm=jpg')
 pizza = Meal.new(
    name: "Pizza",
    description: "Delicious tomato and mozzarella pizza",
    price: 20,
    location: "Milano",
    category: "italian",
    quantity: 6,
    user: azerty
  )
  pizza.photo.attach(io: file_pi, filename: 'pizza.jpg', content_type: 'image/jpg')
  pizza.save!



  puts 'Creating order...'
  order_sushi_qwerty = Order.new(
    user: qwerty,
    meal: sushi
  )
  order_sushi_qwerty.save!
puts 'Finished!'
