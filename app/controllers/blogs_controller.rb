class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    # 追記する
    redirect_to "/blogs/new"
  end
end
