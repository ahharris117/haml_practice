class RoundsController < ApplicationController
  def index
    @rounds = Round.all
  end

  def show
    @round = Round.find(params[:id])
  end

  def new
    @round = Round.new
  end

  def create
    @round = Round.new(round_params)
    if @round.save
      flash[:success] = "Round saved"
      redirect_to rounds_path
    else
      flash.now[:error] = @rounds.errors.full_messages.to_sentence
      render :new
    end
  end

  def add_golfer
    @round = Round.find(params[:id])
    @round.user = current_user
  end
   
  private
  def round_params
    params.require(:round).permit(:course, :time)
  end
end
