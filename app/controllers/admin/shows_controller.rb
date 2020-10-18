class Admin::ShowsController < ApplicationController

  def new
    @show = Show.new
  end

  def create
    show_params = permit_params(params)
    show = Show.create(show_params)
    redirect_to admin_screens_path(date: show.date)
  end

  private

  def permit_params(params)
    params.require(:show).permit(:screen_id, :date, :movie_id, :time_slot)
  end
end
