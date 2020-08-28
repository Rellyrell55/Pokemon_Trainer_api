class Trainer < ApplicationRecord
  has_many :joins 
  has_many :pokemons, through: :join
end
