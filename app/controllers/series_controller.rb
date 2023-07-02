class SeriesController < ApplicationController
  def index
  end

  def create
      @serie=Serie.new(post_params)
      if @post.save
            redirect_to serie_index_path
      else
      render :new      
      end      
      end
  end

  def new
      @serie=Serie.new
  end

  def series_params
      params.require(:post).permit(:name, :synopsis, :director)
  end