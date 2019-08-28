class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new(invitation_params)
    @trip = Trip.find(params[:trip_id])
    @tripchat = Tripchat.new
    @invitation.trip = @trip
    authorize @invitation
    if @trip.status == 'Open'
      if @invitation.save

          if @trip.max_catchers == @trip.invitations.count
          @trip.status = 'Full'
          @trip.save
          end

        redirect_to trip_path(@trip)
      else
        flash[:error] = 'Something went wrong'
        render 'trips/show'
      end
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
    @trip.status = 'Open'
    @trip.save
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
