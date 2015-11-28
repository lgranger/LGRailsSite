class HomeController < ApplicationController

  def index
    @title = "Lauren Granger"
    @posts = Post.all
  end

  def new
    # write_password = params[:write_passcode]
    # edit_password = params[:edit_passcode]
    # if write_password == "pennypeaches"
    #   @login_allowed = true
    #   redirect_to new_home_post_path
    # elsif edit_password == "peachespenny"
    #   redirect_to edit_home_post_path
    # else
    #   @login_allowed = false
    #   redirect_to 'root'
    # end
  end

end
