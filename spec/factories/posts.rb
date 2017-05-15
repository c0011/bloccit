FactoryGirl.define do
  factory :post do
    title Random_Data.random_sentence
    body Random_Data.random_paragraph
    topic
    user
    rank 0.0
  end
end
