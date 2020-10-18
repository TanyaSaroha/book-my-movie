class ShowsController < ApplicationController

  def index
    @shows = Show.all.includes(:bookings)
    filtering_params(params).each do |key, value|
      @shows = @shows.public_send("filter_by_#{key}", value) if value.present?
    end

    respond_to do |format|
      format.html { render :index }
      format.js { render :list }
    end

  end

  private

  def filtering_params(params)
    params.slice(:movie_id, :time_slot, :date)
  end
end



# # app/controllers/users_controller.rb
# # ......
# def create
#   @user = User.new(params[:user])
#
#   respond_to do |format|
#     if @user.save
#       format.html { redirect_to @user, notice: 'User was successfully created.' }
#       format.js
#       format.json { render json: @user, status: :created, location: @user }
#     else
#       format.html { render action: "new" }
#       format.json { render json: @user.errors, status: :unprocessable_entity }
#     end
#   end
# end
