class ShowsController < ApplicationController

  def index
    @shows = Show.where(date: Date.today)
  end
end
