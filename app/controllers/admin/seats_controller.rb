class Admin::SeatsController < ApplicationController

  def index
    show = Show.find_by(id: params[:show_id])
    screen = show.screen
    respond_to do |format|
      format.csv { send_data screen.seats.to_csv(params[:show_id]), filename: "#{screen.name}-#{show.date}.csv" }
    end
  end

end
