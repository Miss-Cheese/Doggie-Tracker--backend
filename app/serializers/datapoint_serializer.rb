class DatapointSerializer < ActiveModel::Serializer
  attributes :id, :walk_id, :latitude, :longitude
end
