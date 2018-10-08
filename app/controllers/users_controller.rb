class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Succesfully created a user!"
      redirect_to '/'
    else
      flash[:warning] = "Invalid credentials"
      redirect_to '/signup'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
