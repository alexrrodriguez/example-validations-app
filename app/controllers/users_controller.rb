class UsersController < ApplicationController

  def index
    user = User.all
    render json: user
  end

  def show
    user_id = params["id"]
    user = User.find(user_id)
    render json: user
  end

  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"]
    )
    if user.save
      render json: user
    else
      render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    user_id = params["id"]
    user = User.find_by(id: user_id)

    user.first_name = params["first_name"] || user.first_name
    user.last_name = params["last_name"] || user.last_name
    user.email = params["email"] || user.email

    if user.save
      render json: user
    else
      render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user_id = params["id"]
    user = User.find_by(id: user_id)
    user.destroy
    render json: {message: "product successfully deleted."}
  end

end
