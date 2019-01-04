class RelationshipsController < ApplicationController

  def follow
    me = Student.find(session[:student_id])
    friend = Student.find(params[:followed_student_id])

    Relationship.create(student_id: me.id, followed_student_id: friend.id)  

    redirect_to student_path(friend)
  end

  def unfollow
    me = Student.find(session[:student_id])
    friend = Student.find(params[:followed_student_id])

    Relationship.find_by(student_id: me.id, followed_student_id: friend.id).delete

    redirect_to student_path(friend)
  end

end
