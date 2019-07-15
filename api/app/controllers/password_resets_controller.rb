class PasswordResetsController < ApplicationController
  def new
    render json: 'hola bebe'
  end

  def create
    @user = User.find_by(email: params['password_reset']['email'].downcase)
    if @user
      regenerate_and_timestamp_reset_token(@user)
      @user.send_password_reset_email
      render json: "Email sent with password reset instructions"
      # redirect_to root_url
    else
      render json: 'Email address not found'
    end
  end

  def edit; end
end
