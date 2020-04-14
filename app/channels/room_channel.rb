class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:id])
    stream_for room
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
