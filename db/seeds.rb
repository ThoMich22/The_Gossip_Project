# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'




10.times do
    #c = City.all.sample
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Hipster.sentence, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 100))
end

10.times do
    city = City.create!(name: Faker::Address.city, zip_code: Faker::Lorem.characters(number: 10, min_alpha: 4))
end

10.times do
    tag = Tag.create!(title: Faker::Color.color_name)
end

10.times do
    users_list = User.all
    tags_list = Tag.all
    Gossip.create(title: Faker::Movie.quote, content: Faker::Lorem.paragraph, user: users_list.sample, tag: tags_list.sample)
end

