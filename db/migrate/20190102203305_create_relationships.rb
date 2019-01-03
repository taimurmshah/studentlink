class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.belongs_to :student
      t.belongs_to :followed_student #following means "the user that is followed"
      t.index [:student_id, :followed_student_id], unique: true
      t.timestamps
    end
  end
end
