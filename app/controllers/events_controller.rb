class EventsController < ApplicationController
  before_action :check_if_user, except: [:index, :show]

  def check_if_user
    redirect_to new_user_path unless @current_user
  end
  
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @group = Group.find(params[:group_id])
    @event = @group.events.new
    @course = Course.all.map{|c| [c.name, c.id]}
  end

  def create
    @group = Group.find(params[:group_id])
    @event = @group.events.create(event_params)
    redirect_to @event
  end

  def edit
    @event = Event.find(params[:id])
    @course = Course.all.map{|c| [c.name, c.id]}
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  private
  def event_params
    params.require(:event).permit(:name, :time, :course_id, :group_id)
  end

end
