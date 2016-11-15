class MembershipsController < ApplicationController

  def index
    @memberships = @current_user.memberships.all
  end

  def new
    @group = Group.find(params[:group_id])
    if Membership.exists?(user_id: @current_user.id, group_id: @group.id)
      flash[:alert] = "You are already in this group!"
    else
      @membership = Membership.create(user_id: @current_user.id, group_id: @group.id)
      flash[:notice] = "You have joined this group"
    end
    redirect_to @group
  end

  private
  def membership_params
    params.require(:membership).permit(:user_id, :group_id)
  end

end
