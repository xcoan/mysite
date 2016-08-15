class BlogpostsController < ApplicationController
  # creates route for new post.
  def new
    @page_title = "New Blog"
    @blogpost = Blogpost.new
  end

  # creates route for editing a post
  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  # U action. Renders routes for editing post
  def update
    @blogpost = Blogpost.find(params[:id])

    if @blogpost.update(blog_params)
      redirect_to @blogpost
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
    @page_title = "Blog Post " + params[:id]
    @blogpost = Blogpost.find(params[:id])
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
