class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation, :type))
    @user.email = params[:user][:email].downcase
    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver
        format.html { redirect_to(root_path, notice: 'User was successfully created.') }
      else
        format.html { render action: 'new' }
      end
    end
  end

end
