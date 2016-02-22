class CommentsController < ApplicationController

  before_action :require_sign_in
  before_action :authorize_user, only: [:destroy]

  def create

    if params[:post_id]
      commentable = Post.find(params[:post_id])
    else
      commentable = Topic.find(params[:topic_id])
    end


    comment = commentable.comments.new(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to [commentable.topic, commentable] if params[:post_id]
      redirect_to commentable if params[:topic_id]
    else
      flash[:alert] = "Comment failed to save."
      redirect_to [commentable]
    end
  end

  def destroy
    if params[:post_id]
      commentable = Post.find(params[:post_id])
      comment = commentable.comments.find(params[:id])
    else
      commentable = Topic.find(params[:topic_id])
      comment = commentable.comments.find(params[:id])
    end


    if comment.destroy
      flash[:notice] = "Comment was deleted"
      redirect_to [commentable.topic, commentable] if params[:post_id]
      redirect_to commentable if params[:topic_id]
    else
      flash[:alert] = "Comment couldn't be deleted. Try again."
      redirect_to [commentable]
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def authorize_user
    comment = Comment.find(params[:id])
    unless current_user == comment.user || current_user.admin?
      flash[:alert] = "You do not have permission to delete a comment."
      redirect_to [comment.post.topic, comment.post]
    end
  end
end
