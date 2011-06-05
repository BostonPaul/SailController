class Equipment < ActiveRecord::Base
    belongs_to :boat
    has_one :equipment_type
end
