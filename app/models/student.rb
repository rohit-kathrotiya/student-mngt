class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    
    validates :first_name, :last_name, :email, :city, presence: true
    validates :email, uniqueness: true
    validates :first_name, :last_name, length: { minimum: 2, maximum: 50 }
    validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letter are allowed" }
    validate :check_valid_age
    # validates :age, presence: true, numericality: true

    after_save :display_student_age

    def display_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            puts "Total age of student is : #{age}"
        else
            puts "Age can not be calculated withpout age"
        end
    end

    def check_valid_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            if age < 15
                errors.add(:age, "Please provide valid age. Age must be more than 15 years")
            end
        end
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def age
        # same method
        # return nil unless date_of_birth.present?
        # return Date.today.year - date_of_birth.year
        if date_of_birth.present?
            Date.today.year - date_of_birth.year
        else
            nil
        end
    end
end
