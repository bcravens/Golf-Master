class GroupsController < ApplicationController
  before_action :check_if_user, except: [:index, :show]

  def check_if_user
    redirect_to new_user_path unless @current_user
  end
  
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create!(group_params)
    @group.users.push(@current_user)
    redirect_to @group
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to @group
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to courses_path
  end

  private
  def group_params
    params.require(:group).permit(:name, :num_players)
  end


end
