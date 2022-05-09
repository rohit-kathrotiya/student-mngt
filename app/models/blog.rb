class Blog < ApplicationRecord
    paginates_per 10
    belongs_to :student
end
