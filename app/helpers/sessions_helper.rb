module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end
end

class ApplicationController < ActionController::Base
  protect_from_fargery with: exception
  include SessionsHelper
  before_action :login_required

  private
  def login_required
    redirect_to new_session_path unless current_user
  end
end
