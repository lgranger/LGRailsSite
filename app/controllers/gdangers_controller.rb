class GdangersController < ApplicationController

  def show
    if params[:edit_passcode] == "pennypeaches"
      @login_allowed = true
      @posts = Post.all
    else
      @login_allowed = false
    end

  end

end
