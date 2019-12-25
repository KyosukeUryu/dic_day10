class BlogsController < ApplicationController
  def index
    @blogs = Blog.all

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    # @blog.user_id = current_user.id
    if @blog.save
      blog @blgo, notice: 'Picture was successfully created.' 
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy

  end

  def show
    @blog = Blog.find(params[:id])
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:id, :title, :content, :user_id)
  end


end
