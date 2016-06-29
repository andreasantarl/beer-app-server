class TriedBeer < ActiveRecord::Base
  belongs_to :profile
  belongs_to :beer
end
