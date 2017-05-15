FactoryGirl.define do
  pw = Random_Data.random_sentence

  factory :user do
    name Random_Data.random_name

    sequence(:email){|n| "user#{n}@factory.com" }
    password pw
    password_confirmation pw
    role :member
  end
end
