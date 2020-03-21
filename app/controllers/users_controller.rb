class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    debugger
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Welcome to this board!!!!!"
      redirect_to root_path 
    else
      render 'new'
    end
  end


  private 

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end