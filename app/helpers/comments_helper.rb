module CommentsHelper
  def user_is_authorized_for_comment?(comment)
    current_user && (current_user == comment.user || current_user.admin?)
  end

  def comments(user)
    if user.comments.count > 0
      pluralize(@user.comments.count, 'comment')
    else
      "Don't have any comments"
    end
  end
end
