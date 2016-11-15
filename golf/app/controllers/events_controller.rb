class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @event = Event.new
  end

  def create
    redirect_to root_path unless @current_user
    @event = Event.create!(event_params)
    redirect_to @event
  end

  def edit
    redirect_to root_path unless @current_user
    @event = Event.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    redirect_to root_path unless @current_user
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to courses_path
  end

  private
  def event_params
    params.require(:event).permit(:time, :course_id, :group_id)
  end

end
