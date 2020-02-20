class Dog < ApplicationRecord
    belongs_to :user
    has_many :meals
    has_many :weights
    has_many :walks
end
