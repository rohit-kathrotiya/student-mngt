class Demo < ApplicationRecord
    has_one  :sub_demo
    include Validatable
    before_create :greeting_callback

    def greeting_callback
        puts "before craete callback work coreecttly.."
    end
end
