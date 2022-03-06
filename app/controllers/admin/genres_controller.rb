class Admin::GenresController < ApplicationController
  def index
    @genre  = Genre.new
    @genres = Genre.all
  end

  def create
    genre   = Genre.new(genre_params)
    genres  = Genre.all
    genre.save
    redirect_to admin_genres_path(genres)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre   = Genre.find(params[:id])
    genres  = Genre.all
    genre.update(genre_params)
    redirect_to edit_admin_genre_path(genres)
  end

  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
