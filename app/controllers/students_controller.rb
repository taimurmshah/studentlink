class StudentsController < ApplicationController
  before_action :authentication_required, only: [:show]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.name = params[:student][:name]
    @student.username = params[:student][:username]
    @student.password = params[:student][:password]
    if @student.save
      session[:student_id] = @student.id
      redirect_to student_path(@student)
    else
      render 'students/new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  #
  # private
  #
  # def student_params
  #     params.require(:student).permit(:name, :username)
  # end

end
