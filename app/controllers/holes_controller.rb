class HolesController < ApplicationController
  before_action :check_if_user, except: [:index, :show]

  def check_if_user
    redirect_to new_user_path unless @current_user
  end

  def index
    @holes = Hole.all
  end

  def new
    @course = Course.find(params[:course_id])
    @hole = @course.holes.new
  end

  def create
    @course = Course.find(params[:course_id])
    @hole = @course.holes.create(hole_params)
    redirect_to @hole
  end

  def show
    @hole = Hole.find(params[:id])
  end

  def edit
    @hole = Hole.find(params[:id])
  end

  def update
    @hole = Hole.find(params[:id])
    @hole.update(hole_params)
    redirect_to @hole
  end

  def destroy
    @hole = Hole.find(params[:id])
    @hole.destroy
    redirect_to courses_path
  end

  private
  def hole_params
    params.require(:hole).permit(:hole_num, :par, :yardage, :course_id)
  end
end
