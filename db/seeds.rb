
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
puts 'Creating meals...'
  burritos = Meal.new(
    name: "burritos",
    description: "con carne",
    price: 40,
    location: "lyon",
    quantity: 4,
    category: "Mexican",
    user: azerty
  )
  burritos.save!
 sushi = Meal.new(
    name: "sushi",
    description: "with salmon",
    price: 80,
    location: "lyon",
    category: "Japanese",
    quantity: 9,
    user: azerty
  )
  sushi.save!
  puts 'Creating order...'
  order_sushi_qwerty = Order.new(
    user: qwerty,
    meal: sushi
  )
  order_sushi_qwerty.save!
puts 'Finished!'
