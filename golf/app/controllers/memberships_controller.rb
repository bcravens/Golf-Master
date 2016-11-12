class MembershipsController < ApplicationController

  def index
    @memberships = Membership.all
  end

  def new
    @group = Group.find(params[:group_id])
    @membership = Membership.create(user_id: @current_user.id, group_id: @group.id)
    redirect_to @group
  end

  def create
    @group = Group.find(params[:id])
    @membership = Membership.create!(membership_params)
    redirect_to @group
  end

  private
  def membership_params
    params.require(:membership).permit(:user_id, :group_id)
  end

end
