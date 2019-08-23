class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new(invitation_params)
    @trip = Trip.find(params[:trip_id])
    @invitation.trip = @trip
    authorize @invitation
    if @invitation.save
      redirect_to trip_path(@trip)
    else
      flash[:error] = 'Something went wrong'
      render 'trips/show'
    end
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    authorize @invitation
    @trip = @invitation.trip
    @invitation.destroy

    redirect_to trip_path(@trip)
  end
  def update
    @invitation = Invitation.find(params[:id])
    authorize @invitation
    @trip = @invitation.trip
    @invitation.joined = true
    @invitation.save
    redirect_to trip_path(@trip)

  end

  private

  def invitation_params
    params.require(:invitation).permit(:catcher_id)
  end
end
