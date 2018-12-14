class Api::V1::ContactsController < ApplicationController
  protect_from_forgery :except => :index

  def index
    if current_user
      render json: { contacts: Contact.current_user_contacts(current_user) }, status: :ok
    else
      render json: {}, status: :bad_request
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:id)
  # end
end