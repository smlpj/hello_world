class Friend < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, format: { with: /[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+/, message: "%{value} is not a valid email" }
    validates :phone, numericality: true
    validates :twitter, format: { with: /@(\w){1,15}/, message: "%{value} is not a valid twitter user" }
end
