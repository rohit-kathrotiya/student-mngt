# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student = Student.create(
    first_name: "Rohit",
    last_name: "kathrotiya",
    email: "rohit@gmail.com",
    city: "Surat"
)

# THIS IS SAME METHOD WHICH DESCRIBE BEFORE.
# student = Student.new(
#     first_name: "Rohit",
#     last_name: "kathrotiya",
#     email: "rohit@gmail.com",
#     city: "Surat"
# )

# student.save()

15.times do |i|
    Student.create(
        first_name: "Rohit #{i+1}",
        last_name: "Kathrotiya #{i+1}",
        email: "rohit #{i+1}@gmail.com",
        city: "Surat #{i+1}"
    )
end