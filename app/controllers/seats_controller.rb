class SeatsController < ApplicationController

  def add
    student_id = session[:student_id]
    course_id = params[:course_id]
    Seat.create(student_id: student_id, course_id: course_id)

    redirect_to '/home'
  end

  def drop
    seat = Seat.find_by(course_id: params[:course_id], student_id: session[:student_id])
    if seat
      seat.destroy

      redirect_to '/home'
    end
  end


end
