class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, :city, presence: true

    after_save :display_student_age

    def display_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            puts "Total age of student is : #{age}"
        else
            puts "Age can not be calculated withpout age"
        end
    end
end
