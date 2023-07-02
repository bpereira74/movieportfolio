class MoviesController < ApplicationController
  def index
  end

  def create
      @movie=Movie.new(post_params)
      if @post.save
            redirect_to movie_index_path
      else
      render :new      
      end      
      end
  end

  def new
      @movie=Movie.new
  end

  def movies_params
      params.require(:post).permit(:name, :synopsis, :director)
  end

