class Agenda < ApplicationRecord
    validates :init_date, presence: true
    validates :end_date, presence: true
end
