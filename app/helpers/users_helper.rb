module UsersHelper


  def display_posts_count(user)
    if user.posts.count > 0
      pluralize(user.posts.count, 'post')
    else
      "Ain't got no posts"
    end
  end
end
