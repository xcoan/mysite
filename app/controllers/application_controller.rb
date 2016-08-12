class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_title

  private

  def set_title
    @page_title = "X Coan"
  end
end
