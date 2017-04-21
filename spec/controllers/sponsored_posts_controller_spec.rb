require 'rails_helper'
include Random_Data
RSpec.describe SponsoredPostsController, type: :controller do
  let(:new_topic) { Topic.create!(name:  Random_Data.random_sentence, description: Random_Data.random_paragraph) }
  let(:new_sponsored_post) { new_topic.sponsoredPost.create!(title: Random_Data.random_sentence, body: Random_Data.random_paragraph, price: 99) }

  describe "GET #show" do
    it "returns http success" do
      get :show, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to render_template :show
    end

    it "assigns new_sponsored_post to @sponsoredPost" do
      get :show, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(assigns(:sponsoredPost)).to eq(new_sponsored_post)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to render_template :new
    end

    it "initializes @sponsoredPost" do
      get :new, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(assigns(:sponsoredPost)).not_to be_nil
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      get :edit, topic_id: new_sponsored_post.id, id: new_topic.id
      expect(response).to render_template :edit
    end

    it "assigns sponsored post to be updated to @sponsoredPost" do
      get :edit, topic_id: new_sponsored_post.id, id: new_topic.id
      sponsoredPost_instance = assigns(:sponsoredPost)
    end
  end

end
