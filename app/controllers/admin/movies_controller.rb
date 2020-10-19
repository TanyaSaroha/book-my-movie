class Admin::MoviesController < ApplicationController

  def index
    @movies = Movie.all.order(:name)
  end

  def new
    @movie = Movie.new
    respond_to do |format|
      format.js
    end
  end

  def create
    Movie.create(permit_params(params))
    redirect_to admin_movies_path(date: params[:date])
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    Movie.find_by(id: params[:id]).update(permit_params(params))
    redirect_to admin_movies_path(date: params[:date])
  end

  private

  def permit_params(params)
    params.require(:movie).permit(:name)
  end
end
