require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: Random_Data.random_sentence, description: Random_Data.random_paragraph) }
  let(:post) { topic.posts.create!(title: Random_Data.random_sentence, body: Random_Data.random_paragraph) }
  let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

  describe "attributes" do
    it "has a body attribute" do
      expect(comment).to have_attributes(body: "Comment Body")
    end
  end
end
