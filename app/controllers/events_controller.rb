class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @group = Group.find(params[:group_id])
    @event = @group.events.new
    @course = Course.all.map{|c| [c.name, c.id]}
  end

  def create
    redirect_to root_path unless @current_user
    @group = Group.find(params[:group_id])
    @event = @group.events.create(event_params)
    redirect_to @event
  end

  def edit
    redirect_to root_path unless @current_user
    @event = Event.find(params[:id])
    @course = Course.all.map{|c| [c.name, c.id]}
  end

  def update
    redirect_to root_path unless @current_user
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  private
  def event_params
    params.require(:event).permit(:name, :time, :course_id, :group_id)
  end

end
