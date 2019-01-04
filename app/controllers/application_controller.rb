class ApplicationController < ActionController::Base

  def index
  end

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_student
  end

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def home
    @student = current_student
  end

  helper_method :current_student #this is required to use this method in my views

end
