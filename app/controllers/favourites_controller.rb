class FavouritesController < ApplicationController
  def create
    @destination = Destination.find(params[:destination_id])
    @favourite = Favourite.new
    @favourite.catcher = current_catcher
    @favourite.destination = @destination
    authorize @favourite
    @favourite.save
    redirect_to destination_path(@destination)

  end

  def destroy
  @favourite = Favourite.find(params[:id])
  destination = @favourite.destination
  authorize @favourite
  @favourite.destroy
  redirect_to destination_path(destination)
  end
end
