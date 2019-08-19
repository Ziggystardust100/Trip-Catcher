class DestinationsController < ApplicationController
def index
  @destinations = policy_scope(Destination).geocoded


   @markers = @destinations.map do |destination|
    {
      lat: destination.latitude,
      lng: destination.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { destination: destination }),
      image_url: helpers.asset_url('feather.jpg')
    }



  end

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



