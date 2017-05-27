class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos


    render("users/show.html.erb")
  end

  def my_likes
    @user = current_user
    @likes = current_user.likes

    render("my_likes.html.erb")

  end

end
