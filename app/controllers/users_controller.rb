class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash.now[:success] = "Welcome to this board!!!!!"
      redirect_to root_path 
    else
      flash.now[:alert] = "Sign up failed."
      render 'new'
    end
  end


  private 

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
