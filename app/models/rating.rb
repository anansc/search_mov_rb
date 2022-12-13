class Rating < ApplicationRecord
    validates :comment, presence: true
    validates :rate, presence: true
end
