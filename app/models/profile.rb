class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :tried_beers
  has_many :beers, through: :tried_beers
end
