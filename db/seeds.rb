# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

OrderStatus.delete_all
OrderStatus.create! id: 1, name: 'In Progress'
OrderStatus.create! id: 2, name: 'Placed'
OrderStatus.create! id: 3, name: 'Shipped'
OrderStatus.create! id: 4, name: 'Cancelled'

HireClass.destroy_all

Hireling.create(
  name: 'Lita Backstab'
)

1.times do
  HireClass.create(
    name: 'Warrior',
    description: "Protects you while you quest, deflecting blows and protecting bro's"
  )

  HireClass.create(
    name: 'Rogue',
    description: 'Picks pockets, back-stabs baddies.'
  )

  HireClass.create(
    name: 'Wizard',
    description: 'Throws balls of fire, bolts of lightning, and looks class as hell doing it.'
  )

  HireClass.create(
    name: 'Cleric',
    description: 'Heals your wounds, and bashes your enemies.'
  )

  HireClass.create(
    name: 'Druid',
    description: 'Can shapeshift into all sorts of different animals. Will definitely /purr in the form of a cat'
  )
end

1.times do
  Accessory.create(
    accessory_name: 'Definitely has a Bottom Bag',
    description: 'A bag that can hold lots of stuff you find on your travels, but it definitely has a bottom',
    cost: 25.99,
    stock: 29,
    active: true
  )
  Accessory.create(
    accessory_name: 'Mightier Sword',
    description: 'They always said it was more mighty than a sword, you be the judge.',
    cost: 109.99,
    stock: 20,
    active: true
  )
  Accessory.create(
    accessory_name: 'Potion of Greater Strength',
    description: 'Makes you really good at lifting stuff.',
    cost: 2.99,
    stock: 209,
    active: true
  )
  Accessory.create(
    accessory_name: 'Potion of Greater Agility',
    description: 'It is basically coffee. You like coffee, just buy it.',
    cost: 3.99,
    stock: 100,
    active: true
  )
  Accessory.create(
    accessory_name: 'Shield of Shielding',
    description: 'It might look like justs another board of wood, but it will deflect a blow or 2.',
    cost: 50.99,
    stock: 10,
    active: true
  )
  Accessory.create(
    accessory_name: 'Ruby or Redness',
    description: 'It does not really do anything, but it is a ruby. Come on.',
    cost: 200.99,
    stock: 5,
    active: true
  )
  Accessory.create(
    accessory_name: 'Potion of Greater Wisom',
    description: 'A book in liquid form. Learn all you need in just one gulp. Maybe 2.',
    cost: 5.99,
    stock: 20,
    active: true
  )
end
