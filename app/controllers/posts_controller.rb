class PostsController < ApplicationController

  def new
    if params[:write_passcode] == "pennypeaches"
    @login_allowed = true
  end

  def edit
    
  end

end
