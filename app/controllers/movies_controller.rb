class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params_id)
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
    def set_movie
    @movie = Moovie.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
