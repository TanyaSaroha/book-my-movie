class ShowsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @shows = Show.all.includes(:bookings)
    filtering_params(params).each do |key, value|
      @shows = @shows.public_send("filter_by_#{key}", value) if value.present?
    end
    respond_to do |format|
      format.js { render :js => "window.location='#{ shows_path(movie_id: params[:movie_id],
        date: params[:date], time_slot: params[:time_slot] ) }'" }
      format.html { render :index }
    end

  end

  private

  def filtering_params(params)
    params.slice(:movie_id, :time_slot, :date)
  end
end
