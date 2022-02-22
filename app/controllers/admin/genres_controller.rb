class Admin::GenresController < ApplicationController
  def index
    @genre  = Genre.new
    @genres = Genre.all
  end

  def create
    genres = Genre.all
  end

  def edit
  end

  def update
  end
end
