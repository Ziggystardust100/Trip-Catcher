class TripsController < ApplicationController

  def index
    @trips = policy_scope(Trip)
  end



  def show
    @trip = Trip.find(params[:id])
    authorize @trip
    @invitation = Invitation.new
  end

  def new
    @trip = Trip.new
    @destination = Destination.find(params[:destination_id])
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    @destination = Destination.find(params[:destination_id])
    @trip.destination = @destination
    @trip.catcher = current_catcher
    authorize @trip
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    authorize @trip
    @trip.destroy
    redirect_to root_path
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :description)
  end

end
