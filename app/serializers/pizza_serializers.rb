class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
  has_many :votes

  class VoteSerializer < ActiveModel::Serializer
    attributes :pizza_id
  end
end



