class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  skip_before_action :authorize, only: :create
  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    render json: @current_user
  end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
      render json: user, status: :created
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
