class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    user = find_user
    render json: user, status: :ok
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserMailer.confirmation_email(@user).deliver_now
      render json: { message: 'User created successfully. Please check your email for verification.' }, status: :created
    else
      render json: { error: @user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def verify_email
    @user = User.find_by_confirmation_token(params[:token])

    if @user
      @user.update(confirmed: true, confirmation_token: nil)
      render json: { message: 'Email verification successful. You can now log in.' }, status: :ok
    else
      render json: { error: 'Invalid verification token.' }, status: :not_found
    end
  end

  def destroy
    user = find_user
    user.destroy
    render json: {message: "User deleted successfully!"}, status: :ok

  end


  private
  def user_params
    params.permit(:username, :email, :gender, :height, :weight, :dob, :is_admin, :profile_image, :password, :password_confirmation)
  end
  def find_user
    User.find(params[:id])
  end
  def render_user_not_found
    render json: {error: "User not found!"}, status: :not_found
    end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
