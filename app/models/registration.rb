class Registration < ActiveRecord::Base
    belongs_to :boat
    belongs_to :user
    belongs_to :regattum
    
    def skipper
        return user
    end
end