class LikesController < ApplicationController

  def create
    @like = current_user.likes.new(like_params)
    unless @like.save
      flash[:notice] = "You can't like more than once"
    end
    redirect_to courses_path
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @course = @like.course
    @like.destroy
    redirect_to courses_path
  end

  private
  def like_params
    params.require(:like).permit(:course_id)
  end
end
