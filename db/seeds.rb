# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying  my articles"
Article.destroy_all

puts "Creating new ones"

10.times do
  new_article = Article.new(
    title: Faker::JapaneseMedia::OnePiece.akuma_no_mi,
    content: Faker::JapaneseMedia::OnePiece.quote
  )
  new_article.save!
end

puts "I'm done"
