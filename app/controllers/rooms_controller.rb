class RoomsController < ApplicationController
  after_action :broadcast, only: [:get_rooms]
  def get_rooms
    @rooms = Room.all

    render json: @rooms
  end

  def broadcast
    ActionCable.server.broadcast('rooms','Có thằng lấy rooms')
  end
end