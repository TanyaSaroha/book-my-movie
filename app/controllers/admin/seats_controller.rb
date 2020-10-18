class Admin::SeatsController < ApplicationController

  def index
    show = Show.find_by(id: params[:show_id])
    respond_to do |format|
      format.csv { send_data show.bookings.to_csv, filename: "show-#{Date.today}.csv" }
    end
  end

end
