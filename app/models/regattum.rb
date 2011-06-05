class Regattum < ActiveRecord::Base
    has_many :races
    has_many :registrations
end
