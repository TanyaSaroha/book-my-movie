class BookingsController < ApplicationController

  def new
    @show = Show.find_by(id: params[:show_id])
    @seats = @show.screen.seats
  end
end
