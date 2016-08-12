class PagesController < ApplicationController
  # index/home page
  def index
    @page_title = "Home"
  end

  # Project page
  def projects
    @page_title = "Projects"
  end

  # Contact page
  def contact
    @page_title = "Contact"
  end
end
