class Walk < ApplicationRecord
    belongs_to :dog
    has_many :datapoints
end
