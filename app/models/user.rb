class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :email, presence: true
    validates :birthday, presence: true
    validates :cpf, presence: true
end
