class FriendRequestsController < ApplicationController
  before_action :set_friend_request, only: [:destroy, :update]

  def create
    friend = Catcher.find(params[:catcher_id])
    @friend_request = current_catcher.friend_requests.new(friend: friend)
    authorize @friend_request

    if @friend_request.save
      redirect_to friend_requests_path
    else
      redirect_to catcher_path(friend)
    end
  end

  def index
    @incoming = policy_scope(FriendRequest).where(friend: current_catcher)
    @outgoing = current_catcher.friend_requests
  end

  def destroy
    @friend_request.destroy

  end

  def update
    @friend_request.accept
  end


  private

  def set_friend_request
    @friend_request = FriendRequest.find(params[:id])
    authorize @friend_request
  end
end
