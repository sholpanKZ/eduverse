class QuizzesController < ApplicationController
  before_action :set_course, only: [:show, :new, :create, :edit, :update, :destroy]

  def show
    @quiz = @course.quiz
  end

  def new
    @quiz = @course.quiz
  end

  def create
    @quiz = @course.build_quiz(quiz_params)
    if @quiz.save
      redirect_to quiz_params, notice: 'Quiz created successfully.'
    else
      render :new
    end
  end

  def edit
    @quiz = @course.quiz
  end

  def update
    @quiz = @course.quiz
    if @quiz.update(quiz_params)
      redirect_to quiz_params, notice: 'Quiz updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @quiz = @course.quiz
    @quiz.destroy
    redirect_to @course, notice: 'Quiz deleted successfully.'
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def quiz_params
    params.require(:quiz).permit(:body)
  end
end
