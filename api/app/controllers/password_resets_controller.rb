class PasswordResetsController < ApplicationController
  skip_before_action :require_login

  def new; end

  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user
      regenerate_and_timestamp_reset_token(@user)
      @user.send_password_reset_email
      render json: { message: 'Email sent with password reset instructions' }
    else
      render json: { errors: 'Email address not found' },
             status: :bad_request
    end
  end

  def update
    p params
    @user = User.find_by(reset_digest: params[:token])
    if params[:password].empty?
      render json: { errors: "can't be empty" },
             status: :bad_request
    elsif @user.update_attributes(password: params[:password])
      render json: { message: 'Password has been reset.' }
    else
      render json: { errors: 'Invalid password' }
    end
  end

  def edit; end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
