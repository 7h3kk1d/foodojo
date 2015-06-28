class PotluckSerializer < ActiveModel::Serializer
  attributes :id, :owner_venmo, :recipes, :total_cost

  def recipes
    object.recipe_ids
  end

  has_many :people
end
