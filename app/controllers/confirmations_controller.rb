class ConfirmationsController < Devise::ConfirmationsController
  skip_before_action :authenticate_user!

  def show
    return if params[:confirmation_token].blank?
    self.resource = resource_class.find_by(confirmation_token: params[:confirmation_token])
    super if resource.nil? && resource.confirmed?
  end

  def confirm
    return if params[resource_name][:confirmation_token].blank?
    self.resource = resource_class.find_by(confirmation_token:
                                               params[resource_name][:confirmation_token])
    if resource.update(permitted_params)
      self.resource = resource_class.confirm_by_token(params[resource_name][:confirmation_token])
      set_flash_message :notice, :confirmed
      sign_in(resource)
      redirect_to edit_user_profile_path(resource)
    else
      render :show
    end
  end

  private

  def permitted_params
    params.require(resource_name).permit(:confirmation_token, :password)
  end
end
