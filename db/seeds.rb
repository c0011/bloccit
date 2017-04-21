# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'random_data'

#Create SponsoredPosts
10.times do
  SponsoredPost.create!(
    title: Random_Data.random_sentence,
    body: Random_Data.random_paragraph,
    topic: Topic.create!(name: Random_Data.random_sentence, description: Random_Data.random_paragraph),
    price: 99
  )
end
sponsored_posts = SponsoredPost.all

#Create Topics
15.times do
  Topic.create!(
    name: Random_Data.random_sentence,
    description: Random_Data.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
    topic: topics.sample,
    title: Random_Data.random_sentence,
    body:  Random_Data.random_paragraph
  )
end
posts = Post.all

#Create post comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Random_Data.random_paragraph
  )
end

Post.find_or_create_by(title: "Unique title", body: "Unique body")

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
