class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  skip_before_action :authorize, only: [:create, :index]
  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    user = User.find_by(id: session[:user_id])
    session[:user_id] = user.id
    render json: user
  end

  def create
    profile_image = Cloudinary::Uploader.upload(params[:profile_image])
    user = User.create(username: params[:username], email: params[:email], gender: params[:gender], password: params[:password], password_confirmation: params[:password_confirmation], profile_image: profile_image['url'], weight: params[:weight], height: params[:height], dob: params[:dob])
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    end
  end


  private
  def user_params
    params.permit(:user, :email, :password, :password_confirmation, :username, :gender, :height, :weight, :dob, :is_admin, :profile_image)
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
