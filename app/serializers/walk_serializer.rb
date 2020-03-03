class WalkSerializer < ActiveModel::Serializer
  attributes :id, :dog_id, :start_time, :finish_time, :pee, :poop, :datapoints
end
