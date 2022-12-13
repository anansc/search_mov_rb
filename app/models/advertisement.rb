class Advertisement < ApplicationRecord
    validates :init_rent_period, presence: true
    validates :end_rent_period, presence: true
end
