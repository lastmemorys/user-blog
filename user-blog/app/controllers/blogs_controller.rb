class BlogsController < ApplicationController
  before_filter :set_blog, :only => [:edit, :edit, :destroy, :show, :update]

  def index
    @blogs=Blog.all
  end

  def show

  end

  def new
    @blog=Blog.new
  end

  def edit
  end

  def update
    if @blog.update_attributes(params[:blog])
      redirect_to(blog_path(@blog))
    end
  end

  def create
    @blog=Blog.new(params[:blog])
    if @blog.save
      redirect_to(blog_path(@blog))
    end
  end

  def destroy
    @blog.delete
    redirect_to(blogs_path)
  end

  private
  def set_blog
    @blog=Blog.find(params[:id])
  end
end
