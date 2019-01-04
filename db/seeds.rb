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
  {name: "Djavan Guy", username: "Beefdj", password: "brazil"},
  {name: "Leo Folla", username: "Theslikestofall", password: "purpledrank"},
  {name: "Mahdi Ladjouzi", username: "Frostfire", password: "cheese"},
  {name: "Taimur Shah", username: "donshah", password: "grapes" }
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
  {title: "Music Theory", description: "In this course, we will be exploring the fundamentals of music theory",teacher_id: Teacher.all.sample[:id]},
  {title: "Advanced Rhetoric", description: "Here we'll be studying advanced techniques of argumentation.",teacher_id: Teacher.all.sample[:id]},
  {title: "Electromagnetism", description: "We will be surveying Maxwell's equations and other field theory.",teacher_id: Teacher.all.sample[:id]},
  {title: "How to 101", description: "If you have to ask... you'll never know",teacher_id: Teacher.all.sample[:id]}
]

courses.each do |course|
  Course.create(course)
end
