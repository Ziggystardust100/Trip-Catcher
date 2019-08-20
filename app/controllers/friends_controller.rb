class FriendsController < ApplicationController
  def index
    @friends = current_catcher.friends # switched user to catcher
  end

  def destroy
    current_catcher.remove_friend(@friend)
  end

  private

  def set_friend
    @friend = current_catcher.friends.find(params[:id])
  end

end
