class BeerSerializer < ActiveModel::Serializer
  attributes :id, :beer_name, :company_name, :beer_style, :abv, :abv, :notes, :rating, :drink_again, :make_private, :photo
end
