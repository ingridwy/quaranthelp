class RoomsController < ApplicationController
def index
  @rooms = Room.all
end

def show
  @room = Room.includes(messages: :user).find(params[:id])
  @message = Message.new
  end

end
