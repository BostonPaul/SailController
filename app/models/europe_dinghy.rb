class EuropeDinghy < ActiveRecord::Base
    has_one :boat
    has_many :equipments, :through => :boat
end
