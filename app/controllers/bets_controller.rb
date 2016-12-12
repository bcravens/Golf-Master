class BetsController < ApplicationController
  before_action :check_if_user, except: [:index, :show]

  def check_if_user
    redirect_to new_user_path unless @current_user
  end

  def index
    @bets = Bet.all
  end

  def show
    @bet = Bet.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @hole = @event.course.holes.all.map{|h| [h.hole_num, h.id]}
    @bet = @event.bets.new
  end

  def create
    @event = Event.find(params[:event_id])
    @bets = @event.bets.create!(bet_params)
    redirect_to @event
  end

  def edit
    @event = Event.find(params[:event_id])
    @bet = Bet.find(params[:id])
  end

  def update
    @event = Event.find(params[:event_id])
    @bet = Bet.find(params[:id])
    @bet.update(bet_params)
    redirect_to @event
  end

  def destroy
    @bet = Bet.find(params[:id])
    @bet.destroy
    redirect_to courses_path
  end

  private
  def bet_params
    params.require(:bet).permit(:amount, :hole_id, :course_id, :event_id)
  end

end
