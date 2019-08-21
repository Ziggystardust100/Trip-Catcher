class FriendsController < ApplicationController
  def index
    @friends = current_catcher.friends # switched user to catcher
  end

  def destroy
    @friend = current_catcher.friends.find(params[:id])
    current_catcher.remove_friend(@friend)
    authorize @friend

    redirect_to catcher_path(current_catcher)
  end
end
