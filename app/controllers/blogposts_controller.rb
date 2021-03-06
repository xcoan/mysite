class BlogpostsController < ApplicationController

  before_action :require_user, except: [:index, :show]

  # creates route for new post.
  def new
    @page_title = "New Blog"
    @blogpost = Blogpost.new
  end

  # creates route for editing a post
  def edit
    @blogpost = Blogpost.find(params[:id])
    @page_title = "Editing Blog Post"
  end

  # U action. Renders routes for editing post
  def update
    @blogpost = Blogpost.find(params[:id])

    if @blogpost.update(blog_params)
      redirect_to blogposts_path
    else
      render 'edit'
    end
  end

  # D action.
  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy

    redirect_to blogposts_path
end

  # lists all posts
  def index
    @page_title = "Blog"
    @blogposts = Blogpost.all
  end

  # shows just one post
  def show
    @blogpost = Blogpost.find(params[:id])
    @page_title = "Blog Post " + @blogpost.title
  end

  # C action. Renders route defined in new
  def create
    @blogpost = Blogpost.new(blog_params)

    if @blogpost.save
      redirect_to @blogpost
    else
      render 'new'
    end
  end

  private

  # strong params
  def blog_params
    params.require(:blogpost).permit(:title, :text)
  end
end
