class PasswordResetsController < ApplicationController
  skip_before_action :require_login

  def new
    render json: 'hola bebe'
  end

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

  def edit; end
end
