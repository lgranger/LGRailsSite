class PostsController < ApplicationController

  def new
    @login_allowed = true
    @post = Post.new
    @action = "create"
  end

  def create
    
  end

  def edit
    @login_allowed = true
    @post = Post.find(params[:id])
    @action = "update"
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    @login_allowed = true
    redirect_to "/gdangers"
  end

  private

  def post_params
    params.require(:post).permit([:title, :content, :category_id, :tags])
  end

end
