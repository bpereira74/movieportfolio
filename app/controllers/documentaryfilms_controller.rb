class DocumentaryfilmsController < ApplicationController
  def index
  end

  def create
      @documentaryfilms=Documentaryfilm.new(post_params)
      if @post.save
            redirect_to Documentaryfilm_index_path
      else
      render :new      
      end      
      end
  end

  def new
      @documentaryfilm=Documentaryfilm.new
  end

  def movies_params
      params.require(:post).permit(:name, :synopsis, :director)
  end

