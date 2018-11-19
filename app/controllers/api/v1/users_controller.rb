class Api::V1::UsersController < ApplicationController
  protect_from_forgery :except => :create

  def create
    @user = User.new user_params
    if @user.save
      render json: {}, status: :ok
    else
      render json: {}, status: :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit %i[email password display_name first_name last_name]
  end
end
