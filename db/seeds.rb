# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  new_article = Article.new()
  new_article[:title] = "#{Faker::Book.author} #{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"
  new_article[:content] = "#{Faker::Hacker.say_something_smart} #{Faker::ChuckNorris.fact} #{Faker::HarryPotter.quote} #{Faker::Hacker.say_something_smart}"
  new_article.save
end
