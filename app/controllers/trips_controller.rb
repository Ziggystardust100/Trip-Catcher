class TripsController < ApplicationController

  def index
    @trips = policy_scope(Trip)
  end

  def show
    @trip = Trip.find(params[:id])
    authorize @trip
    @invitation = Invitation.new
    @tripchat = Tripchat.new
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
    @trip.status = 'Open'
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

  def edit
    @trip = Trip.find(params[:id])
    @destination = @trip.destination
    authorize @trip
  end

  def update
    @trip = Trip.find(params[:id])
    authorize @trip
    if @trip.update(trip_params)
      if @trip.max_catchers == @trip.invitations.count
        @trip.status = 'Full'
      else
        @trip.status = 'Open'
      end
        @trip.save
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :description, :max_catchers)
  end

end
