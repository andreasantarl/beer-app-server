class TriedBeerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :profile
  has_one :beer
end
