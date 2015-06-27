class PotluckSerializer < ActiveModel::Serializer
  attributes :id, :owner_venmo

  has_many :people
end
