require 'rails_helper'
include Random_Data
RSpec.describe SponsoredPost, type: :model do
  let(:title) { Random_Data.random_sentence }
  let(:body) { Random_Data.random_paragraph }
  let(:price) { 99 }
  let(:topic) { Topic.create!( name: Random_Data.random_sentence, description: Random_Data.random_paragraph ) }
  let(:sponsoredPost) { SponsoredPost.create!(topic: topic, title: title, body: body, price: price) }

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(sponsoredPost).to have_attributes(title: title, body: body, price: price)
    end
  end
end
