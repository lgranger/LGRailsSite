class PostsController < ApplicationController

  def new
    @login_allowed = true
    @post = Post.new
    @categories = Category.all
    @tags = Tag.all
    @action = "create"
  end

  def create
    new_post = Post.create(post_params)
    new_post.update(content: params[:content], category_id: params[:category_id], pub_dat: Time.now, :tags => Tag.where(:id => params[:tags]))
    redirect_to "/gdangers"
  end

  def edit
    @login_allowed = true
    @post = Post.find(params[:id])
    @categories = Category.all
    @tags = Tag.all
    @action = "update"
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    edit_passcode = "pennypeaches"
    redirect_to "/gdangers"
  end

  private

  def post_params
    params.require(:post).permit([:title])
  end

end
