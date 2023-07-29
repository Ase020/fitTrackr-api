class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found

  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    user = find_user
    render json: :user, status: :ok
  end

  def create
    user = User.create!(user_params)
    if user.valid?
      render json: :user, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end

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
end
