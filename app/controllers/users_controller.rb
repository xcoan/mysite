class UsersController < ApplicationController

  def count
    @count = User.count
    if @count >= 1
      return true
    else
      return false
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/blogposts'
    else
      redirect_to '/signup'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
