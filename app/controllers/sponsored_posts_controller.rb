class SponsoredPostsController < ApplicationController
  before_action :set_sponsored_post, only: [:show, :edit, :update, :destroy]

  # GET /sponsored_posts
  def index
    @sponsored_posts = SponsoredPost.all
  end

  # GET /sponsored_posts/1
  def show
  end

  # GET /sponsored_posts/new
  def new
    @sponsored_post = SponsoredPost.new
  end

  # GET /sponsored_posts/1/edit
  def edit
  end

  # POST /sponsored_posts
  def create
    @sponsored_post = SponsoredPost.new(sponsored_post_params)

    if @sponsored_post.save
      redirect_to @sponsored_post, notice: 'Sponsored post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sponsored_posts/1
  def update
    if @sponsored_post.update(sponsored_post_params)
      redirect_to @sponsored_post, notice: 'Sponsored post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sponsored_posts/1
  def destroy
    @sponsored_post.destroy
    redirect_to sponsored_posts_url, notice: 'Sponsored post was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsored_post
      @sponsored_post = SponsoredPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sponsored_post_params
      params.require(:sponsored_post).permit(:title, :body, :price)
    end
end
