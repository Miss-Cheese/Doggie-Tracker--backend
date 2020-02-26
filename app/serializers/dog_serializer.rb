class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :weights, :walks, :meals
end
