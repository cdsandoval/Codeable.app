class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.includes(:mini_assignments)
    render json: {
      status: 'SUCCESS',
      message: 'Loaded Lessons',
      data: @lessons
    } , status: :ok
  end

  def show
    render json: {
      status: 'SUCCESS',
      message: 'Loaded Lesson',
      data: @lesson
    }
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

end
