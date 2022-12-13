class Property < ApplicationRecord
    validates :rooms, presence: true
    validates :bathroom, presence: true
    validates :size, presence: true
    validates :furnished, presence: true
    validates :sell_price, presence: true
    validates :rent_price, presence: true
    validates :state, presence: true
    validates :city, presence: true
    validates :bairro, presence: true
    validates :cep, presence: true
    validates :number, presence: true
end
