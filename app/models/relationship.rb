class Relationship < ApplicationRecord
  belongs_to :student
  belongs_to :followed_student, class_name: 'Student'

  # validate :realism
  #
  #  private
  #
  #  def realism
  #    return unless user_id == followed_user_id
  #    errors.add :user, 'You can't follow yourself, douchebag.'
  #  end


end
