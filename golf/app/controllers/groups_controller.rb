class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @group = Group.new
  end

  def create
    redirect_to root_path unless @current_user
    @group = Group.create!(group_params)
    redirect_to @group
  end

  def edit
    redirect_to root_path unless @current_user
    @group = Group.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to @group
  end

  def destroy
    redirect_to root_path unless @current_user
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to courses_path
  end

  private
  def group_params
    params.require(:group).permit(:name, :num_players)
  end

end
