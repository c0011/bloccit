# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'random_data'

50.times do
  Post.create!(
    title: Random_Data.random_sentence,
    body:  Random_Data.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: Random_Data.random_paragraph
  )
end

Post.find_or_create_by(title: "Unique title", body: "Unique body")

#Questions
100.times do
  Question.create!(
  title: Random_Data.random_sentence,
  body: Random_Data.random_paragraph,
  resolved: false
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
