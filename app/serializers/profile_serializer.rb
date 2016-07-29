class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :biography,
  :preferences, :favorites, :profile_private, :photo
  has_one :user
end
