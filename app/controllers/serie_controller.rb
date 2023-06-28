class SerieController < ApplicationController
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
def serie_params
      params.require(:serie).permit(:name, :synopsis, :director)
end
end