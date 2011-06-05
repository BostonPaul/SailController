class Crew < ActiveRecord::Base
    belongs_to :user
    belongs_to :boat
    belongs_to :regattum
    belongs_to :crew_type
end
