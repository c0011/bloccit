require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:name) { Random_Data.random_sentence }
  let(:description) { Random_Data.random_paragraph }
  let(:title) { Random_Data.random_sentence }
  let(:body) { Random_Data.random_paragraph }

  let(:topic) { Topic.create!(name: name, description: description) }

  let(:post)  { topic.posts.create!(title: title, body: body) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: title, body: body)
    end
  end
end
