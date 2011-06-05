class Registration < ActiveRecord::Base
    belongs_to :boat
    belongs_to :user
    belongs_to :regattum
    has_many :crews
    has_and_belongs_to_many :clubs
    
    def skipper
        return user
    end
end