class Api::V1::PostsController < Api::V1::BaseController

  #  before_action :authenticate_user, except: [:index, :show]
  #  before_action :authorize_user, except: [:index, :show]


   def show
     post = Post.find(params[:id])
     render json: post.to_json, status: 200
   end

   def index
     posts = Post.all
     render json: posts.to_json, status: 200
   end

   def update
     post = Post.find(params[:id])

     if post.update_attributes(post_params)
       render json: post.to_json, status: 200
     else
       render json: {error: "Post update failed", status: 400}, status: 400
     end
   end

   def delete
     post = Post.find(params[:id])

     if post.delete
       render json: {message: "Topic deleted", status: 200}, status: 200
     else
       render json: {error: "Post delete failed", status: 400}, status: 400
     end
   end

   private

   def post_params
     params.require(:post).permit(:name, :description, :public)
   end
 end
