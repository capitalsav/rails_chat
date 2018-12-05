class Api::V1::TokensController < ApplicationController
  protect_from_forgery except: [:create, :destroy]

  before_action :authenticate_request!

  def create
    # @user = User.new user_params
    # if @user.save
    #   render json: {}, status: :ok
    # else
    #   render json: {}, status: :bad_request
    # end
  end

  def destroy
    # @user = User.new user_params
    # if @user.save
    #   render json: {}, status: :ok
    # else
    #   render json: {}, status: :bad_request
    # end
  end

  private

  def token_params
    params.require(:token).permit(:token)
  end
end
