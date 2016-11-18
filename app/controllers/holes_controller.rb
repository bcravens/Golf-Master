class HolesController < ApplicationController

  def index
    @holes = Hole.all
  end

  def new
    redirect_to root_path unless @current_user
    @course = Course.find(params[:course_id])
    @hole = @course.holes.new
  end

  def create
    redirect_to root_path unless @current_user
    @course = Course.find(params[:course_id])
    @hole = @course.holes.create(hole_params)
    redirect_to @hole
  end

  def show
    @hole = Hole.find(params[:id])
  end

  def edit
    redirect_to root_path unless @current_user
    @hole = Hole.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @hole = Hole.find(params[:id])
    @hole.update(hole_params)
    redirect_to @hole
  end

  def destroy
    redirect_to root_path unless @current_user
    @hole = Hole.find(params[:id])
    @hole.destroy
    redirect_to courses_path
  end

  private
  def hole_params
    params.require(:hole).permit(:hole_num, :par, :yardage, :course_id)
  end
end
