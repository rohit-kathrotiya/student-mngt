module Validatable
    extend ActiveSupport::Concern

    included do
        validates :name, presence: true, uniqueness: true
        validates :description, presence: true, length: { minimum: 10, maximum: 1000 }

        # scope :current_month, -> { where(created_at: Date.today.beginning_of_month...Date.today.end_of_month) }
    end
end