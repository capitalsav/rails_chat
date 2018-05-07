class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :about

  def about
    redirect_back fallback_location: root_path if user_signed_in?
  end
end
