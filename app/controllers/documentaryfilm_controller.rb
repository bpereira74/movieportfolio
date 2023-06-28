class DocumentaryfilmController < ApplicationController
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
end
private
def documentaryfilm_params
      params.require(:documentaryfilm).permit(:name, :synopsis, :director)
end
end