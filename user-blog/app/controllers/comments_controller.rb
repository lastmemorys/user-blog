class CommentsController < ApplicationController

  def create
    @blog=Blog.find(params[:blog_id])
    @comment=@blog.comments.new(params[:comment])
    if @comment.save
      redirect_to blog_path(@blog)
    end
  end

  def destroy
    @blog=Blog.find(params[:blog_id])
    @comment= @blog.comments.find(params[:id])
    @comment.delete
    redirect_to blog_path(@blog)
  end
end
