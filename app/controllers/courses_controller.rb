class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    redirect_to courses_path unless @current_user
    @course = Course.new
  end

  def create
    redirect_to root_path unless @current_user
    @course = Course.create!(course_params)
    redirect_to @course
  end

  def edit
    redirect_to root_path unless @current_user
    @course = Course.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to @course
  end

  def destroy
    redirect_to root_path unless @current_user
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:img_url, :name, :location, :num_holes, :par, :yardage, :rating)
  end

end
