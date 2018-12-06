class Api::V1::ContactsController < ApplicationController
  protect_from_forgery :except => :index

  def index
    if current_user
      render json: {contacts: current_user.users.map {|x| User.find_by(id: x.contact_id)} +
          current_user.contacts.map {|x| User.find_by(id: x.contact_id)}} , status: :ok
    else
      render json: {}, status: :bad_request
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:id)
  # end
end