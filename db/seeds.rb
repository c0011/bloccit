# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'random_data'

# Create Users
5.times do
  User.create!(
  name:     Random_Data.random_name,
  email:    Random_Data.random_email,
  password: Random_Data.random_sentence
  )
end
users = User.all

#Create Topics
15.times do
  Topic.create!(
    name: Random_Data.random_sentence,
    description: Random_Data.random_paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do
  Post.create!(
  user: users.sample,
    topic: topics.sample,
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

user = User.first
user.update_attributes!(
  email: 'admin@email.com',
  password: 'helloworld'
)

Post.find_or_create_by(title: "Unique title", body: "Unique body")

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
