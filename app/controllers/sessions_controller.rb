class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.find_by(username: params[:username])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id

      redirect_to student_path(student)
    else
      render 'sessions/new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end




# if session[:user_id]
#   @student = Student.find(id: session[:user_id] )
#   redirect_to student_path(@student)
# else
#   render :new
# end
