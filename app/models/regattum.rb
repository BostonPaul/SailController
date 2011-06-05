class Regattum < ActiveRecord::Base
    has_many :races
    has_many :registrations
    has_and_belongs_to_many :clubs
end
