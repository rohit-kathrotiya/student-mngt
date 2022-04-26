class Demo < ApplicationRecord
    has_one  :sub_demo

    before_create :greeting_callback

    def greeting_callback
        puts "before craete callback work coreecttly.."
    end
end
