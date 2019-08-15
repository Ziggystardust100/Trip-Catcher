class DestinationsController < ApplicationController
def index
  @destinations = policy_scope(Destination)

end

def show

  @destination = Destination.find(params[:id])
  authorize @destination
end

private

def destination_params
  params.require(:destination).permit(:location, :price, :description)
end

end



