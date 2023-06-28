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
