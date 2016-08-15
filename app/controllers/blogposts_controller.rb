class BlogpostsController < ApplicationController
  # creates new blog post
  def new
    @page_title = "New Blog"
  end

  # lists all posts
  def index
    @page_title = "Blog"
    @blogposts = Blogpost.all
  end

  # shows just one post
  def show
    @page_title = "Blog Post " + params[:id]
    @blogpost = Blogpost.find(params[:id])
  end

  # stores new post in Postgres
  def create
    @blogpost = Blogpost.new(blog_params)

    @blogpost.save
    redirect_to @blogpost
  end

  private

  # strong params
  def blog_params
    params.require(:blogpost).permit(:title, :text)
  end
end
