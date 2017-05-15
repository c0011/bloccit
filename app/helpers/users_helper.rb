module UsersHelper

  def user_posts?(user)
    user.posts.count
  end

  def user_comments?(user)
    user.comments.count
  end
end
