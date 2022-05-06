module ApplicationHelper
    #  It create an method for all view layout. if you want to use thid method in controller then simply
    #  include this file in controller.
    def formate_date(date)
        date.strftime('%A, %b %d, %Y') if date.present?
    end
end
