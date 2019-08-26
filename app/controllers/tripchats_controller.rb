class TripchatsController < ApplicationController

  def create
    @tripchat = Tripchat.new(tripchat_params)
    @tripchat.trip = Trip.find(params[:trip_id])
    @tripchat.catcher = current_catcher
    authorize @tripchat
    if @tripchat.save
      redirect_to trip_path(@tripchat.trip)
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
