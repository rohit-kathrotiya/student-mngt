class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    validates :first_name, :last_name, :email, :city, presence: true
end
