class Ingredient < ApplicationRecord
    has_many :quantities
    has_many :recipes, through: :quantities
    has_many :units, through: :quantities

    validates :name,
              presence: true,
              length: { minimum: 3 }

end
