class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  has_one :user
end
