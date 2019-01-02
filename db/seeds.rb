# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all
Course.destroy_all
Teacher.destroy_all


students = [
  {name: "Djavan Guy", username: "Beefdj"},
  {name: "Leo Folla", username: "Theslikestofall"},
  {name: "Mahdi Ladjouzi", username: "Frostfire"},
  {name: "Taimur Shah", username: "donshah"}
]

students.each do |student|
  Student.create(student)
end

teachers = [
  {name: "Douglas Otis"},
  {name: "Stephen Carroll"},
  {name: "Tim Ferriss"},
  {name: "Patricia Morris"}
]



teachers.each do |teacher|
  Teacher.create(teacher)
end


courses = [
  {title: "Music Theory", teacher_id: Teacher.all.sample[:id]},
  {title: "Advanced Rhetoric", teacher_id: Teacher.all.sample[:id]},
  {title: "Electromagnetism", teacher_id: Teacher.all.sample[:id]},
  {title: "How to Mack 101", teacher_id: Teacher.all.sample[:id]}
]

courses.each do |course|
  Course.create(course)
end
