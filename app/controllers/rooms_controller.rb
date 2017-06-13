class RoomsController < ApplicationController
  def get_rooms
    @rooms = Room.all
    render json: @rooms
  end

  def index
  end
end