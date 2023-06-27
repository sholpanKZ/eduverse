class LessonsController < ApplicationController
   def create
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.create(lesson_params)
    redirect_to course_path(@course)
   end

   def show
    @lesson = Lesson.find(params[:id])
   end

   def edit
     @asdfasdfasfasfasfd = Lesson.find(params[:id])
   end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(lesson_params)
      redirect_to course_path(@lesson.course)
    else
      render :edit, status: :unprocessable_entity
    end
  end

    def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :body, :video_url)
    end
end
