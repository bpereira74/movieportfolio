class MovieController < ApplicationController
  def index
  end

  def index
  end

  def create
      @post=Post.new(post_params)
  end

  def new
      @post=Post.new
  end

  if@post.save
      redirect_to post_index_path
  else
      render:new
  end    

private
def movie_params
      params.require(:movie).permit(:name, :synopsis, :director)
end
end