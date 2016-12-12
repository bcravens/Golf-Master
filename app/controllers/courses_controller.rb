class CoursesController < ApplicationController
  before_action :check_if_user, except: [:index, :show]

  def check_if_user
    redirect_to new_user_path unless @current_user
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create!(course_params)
    redirect_to @course
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to @course
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:img_url, :name, :location, :num_holes, :par, :yardage, :rating)
  end

end
