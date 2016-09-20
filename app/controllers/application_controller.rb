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
<<<<<<< HEAD
    unless request.env['HTTP_HOST'] == 'www.xjcoan.com'
=======
    unless request.env['HTTP_HOST'] == 'xjcoan.com'
>>>>>>> 6ac884a378d93726ad94142c3e695a1146995e70
      redirect_to "http://www.xjcoan.com", :status =&gt; 301
    end
  end

  private

  def set_title
    @page_title = "X Coan"
  end
end
