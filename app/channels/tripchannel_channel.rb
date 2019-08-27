class TripchannelChannel < ApplicationCable::Channel
  def subscribed
     stream_from "tripchat_#{params[:trip_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
