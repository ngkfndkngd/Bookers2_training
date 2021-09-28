class UsersController < ApplicationController
  def index
    @user = current_user
    @users=User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
  end

  def edit
  end
  
  def user_params
    params.require(:user).permit(:name,:profile_image,:introduction)
  end
end
