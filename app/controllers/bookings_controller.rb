class BookingsController < ApplicationController

  def new
    @show = Show.find_by(id: params[:show_id])
    @seats = @show.screen.seats
  end

  def create
    @book = "ssup"
    params[:seat_ids].each{ |seat_id| Booking.create(seat_id: seat_id, show_id: params[:show_id]) }
    seat_codes = Seat.where(id: params[:seat_ids]).pluck(:code).join(", ")
    render :json => {:success => true, :data => {seat_codes: seat_codes}}, :status => 200
  end

end
