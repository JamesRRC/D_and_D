# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all

1.times do
  HireClass.create(
    class_name: 'Warrior',
    class_description: "Protects you while you quest, deflecting blows and protecting bro's"
  )

  HireClass.create(
    class_name: 'Rogue',
    class_description: 'Picks pockets, back-stabs baddies.'
  )

  HireClass.create(
    class_name: 'Wizard',
    class_description: 'Throws balls of fire, bolts of lightning, and looks class as hell doing it.'
  )

  HireClass.create(
    class_name: 'Cleric',
    class_description: 'Heals your wounds, and bashes your enemies.'
  )

  HireClass.create(
    class_name: 'Druid',
    class_description: 'Can shapeshift into all sorts of different animals. Will definitely /purr in the form of a cat'
  )
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
