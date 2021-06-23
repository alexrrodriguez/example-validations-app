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
      render json: {error: product.errors.full_messages}, status :unprocessable_entity
    end
  end

end
