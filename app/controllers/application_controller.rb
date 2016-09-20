class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_title, :ensure_domain
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def ensure_domain
    unless request.env['HTTP_HOST'] == 'xjcoan.com'
      redirect_to "http://www.xjcoan.com", :status =&gt; 301
    end
  end

  private

  def set_title
    @page_title = "X Coan"
  end
end
