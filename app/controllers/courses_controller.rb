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

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to @course
    else
      render :edit, status: :unprocessable_entity
    end
  end
   private
    def course_params
      params.require(:course).permit(:title, :body, :video_url)
    end
end
