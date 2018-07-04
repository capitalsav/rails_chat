class UserProfileController < ApplicationController
  before_action :find_user

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :display_name)
  end

  def find_user
    @user = current_user
  end
end