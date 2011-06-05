class Registration < ActiveRecord::Base
    belongs_to :boat
    belongs_to :user
    belongs_to :regattum
    has_many :crews
    
    def skipper
        return user
    end
end