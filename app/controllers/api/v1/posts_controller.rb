class Api::V1::PostsController < Api::V1::BaseController

   before_action :authenticate_user, except: [:index, :show]
   before_action :authorize_user, except: [:index, :show]


   def show
     post = Post.find(params[:id])
     render json: post.to_json, status: 200
   end

   def index
     posts = Post.all
     render json: posts.to_json, status: 200
   end


   private

   def topic_params
     params.require(:topic).permit(:name, :description, :public)
   end
 end
