class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  def show
    @courses = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(title: "...", body: "...",video_url:"...")

    if @course.save
      redirect_to @course
    else
      render :new, status: :unprocessable_entity
    end
  end
end
