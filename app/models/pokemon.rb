class Pokemon < ApplicationRecord
  has_many :joins
  has_many :trainers, through: :join 
end
