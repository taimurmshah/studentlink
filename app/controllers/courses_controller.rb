class CoursesController < ApplicationController
  before_action :authentication_required, only: [:index, :show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @enrolled = current_student.courses.include?(@course)
  end




end
