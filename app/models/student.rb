class Student < ApplicationRecord
  has_secure_password

  has_many :seats
  has_many :courses, through: :seats

  has_many :relationships
  has_many :followed_students, through: :relationships

  has_many :followers, foreign_key: :followed_student_id, class_name: 'Relationships'
  has_many :follower_students, through: :relationships, source: :student

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :name, presence: true

  def following
    self.followed_students.count
  end

  def followers
    self.follower_students.count
  end

end
