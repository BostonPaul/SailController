class Boat < ActiveRecord::Base
    belongs_to :boat_type
    belongs_to :user
    has_many :equipments
    has_many :sails
end
