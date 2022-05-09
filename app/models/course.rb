class Course < ApplicationRecord
    paginates_per 10
    has_and_belongs_to_many :students
    include Validatable
end
