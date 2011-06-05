class Club < ActiveRecord::Base
    has_and_belongs_to_many :regattum
    has_and_belongs_to_many :registrations
end
