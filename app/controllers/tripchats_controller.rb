class TripchatsController < ApplicationController

  def create
    @tripchat = Tripchat.new(tripchat_params)
    @tripchat.trip = Trip.find(params[:trip_id])
    @tripchat.catcher = current_catcher
    authorize @tripchat
    if @tripchat.save
      ActionCable.server.broadcast "tripchat_#{@tripchat.trip.id}",
      trip_id: @tripchat.trip.id,
      content: @tripchat.to_json,
      catcher_username: @tripchat.catcher.user_name
    else
      render 'trips/show'
    end
  end

  def destroy
    @tripchat = Tripchat.find(params[:id])
    authorize @tripchat
    @tripchat.destroy
    redirect_to trip_path(@tripchat.trip)
  end

  private

  def tripchat_params
    params.require(:tripchat).permit(:content)
  end

end
