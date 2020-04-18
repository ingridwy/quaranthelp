class RoomChannel < ApplicationCable::Channel
  def subscribed
    #stream_from "room_#{params[:room_id]}"
    #:room_id defined on show.html
    room = Room.find(params[:id])
    stream_for room

  end


end
