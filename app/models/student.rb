class Student < ApplicationRecord
    validates :first_name, :last_name, :email, :city, presence: true
end
