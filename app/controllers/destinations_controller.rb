class DestinationsController < ApplicationController

def index
  @destinations = policy_scope(Destination).geocoded

  if params[:query].present?
    sql = "location ILIKE :query"
    @destinations = @destinations.where(sql, query: "%#{params[:query]}%")
  end

   @markers = @destinations.map do |destination|
    {
      lat: destination.latitude,
      lng: destination.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { destination: destination }),
      image_url: helpers.asset_url('logo-dark.svg')
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



