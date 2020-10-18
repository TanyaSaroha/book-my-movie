class Admin::ScreensController < ApplicationController

  def index
    @screens = Screen.all
    respond_to do |format|
      format.js { render :js => "window.location='#{ admin_screens_path(date: params[:date]) }'" }
      format.html { render :index }
    end
  end

end
