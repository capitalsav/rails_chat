class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def check_email; end
end
