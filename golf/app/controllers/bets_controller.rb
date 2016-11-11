class BetsController < ApplicationController

  def index
    @bets = Bet.all
  end

  def show
    @bet = Bet.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @bet = Bet.new
  end

  def create
    redirect_to root_path unless @current_user
    @bet = Bet.create!(bet_params)
    redirect_to @bet
  end

  def edit
    redirect_to root_path unless @current_user
    @bet = Bet.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @bet = Bet.find(params[:id])
    @bet.update(bet_params)
    redirect_to @bet
  end

  def destroy
    redirect_to root_path unless @current_user
    @bet = Bet.find(params[:id])
    @bet.destroy
    redirect_to courses_path
  end

  private
  def bet_params
    params.require(:bet).permit(:amount, :hole_id, :group_id)
  end

end
