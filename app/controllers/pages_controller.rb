class PagesController < ApplicationController
  # index/home page
  def index
    @page_title = "Home"
  end

  def contact
    @page_title = "Contact"
  end
end
