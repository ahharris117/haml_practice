class Api::V1::RoundsController < ApplicationController
  def show
    round = Round.find(params[:id])
    round.users << current_user
    render json: {user: current_user.username}
  end
end
