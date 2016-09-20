class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_title
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  private

  def set_title
    @page_title = "X Coan"
  end
end
