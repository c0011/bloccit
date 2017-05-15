FactoryGirl.define do
  factory :comment do
    title Random_Data.random_sentence
    body Random_Data.random_paragraph
    user
  end
end
