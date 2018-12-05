class ApplicationController < ActionController::Base
  # include Pundit
  protect_from_forgery with: :exception
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def authenticate_request!
    @current_user = authorize
    invalid_authentication unless @current_user
  end

  def invalid_authentication
    render json: { error: 'Invalid authentication' }, status: :unauthorized
  end

  private

  def authorize

  rescue
    
  end

  def user_not_authorized
    flash[:warning] = 'You are not authorized to perform this action.'
    redirect_to(request.referrer || root_path)
  end
end
