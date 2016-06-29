class Beer < ActiveRecord::Base
  has_many :tried_beers
  has_many :profiles, through: :tried_beers
end
