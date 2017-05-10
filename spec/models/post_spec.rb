require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:name) { Random_Data.random_sentence }
  let(:description) { Random_Data.random_paragraph }
  let(:title) { Random_Data.random_sentence }
  let(:body) { Random_Data.random_paragraph }

  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }

  let(:post) { topic.posts.create!(title: title, body: body, user: user) }

  let(:topic) { Topic.create!(name: name, description: description) }

  it { is_expected.to have_many(:comments) }

  it { is_expected.to belong_to(:topic) }
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:topic) }
  it { is_expected.to validate_presence_of(:user) }


  it { is_expected.to validate_length_of(:title).is_at_least(5) }
  it { is_expected.to validate_length_of(:body).is_at_least(20) }

  describe "attributes" do
    it "has title, body, and user attribute" do
      expect(post).to have_attributes(title: title, body: body, user: user)
    end
  end
end
