class Quantity < ApplicationRecord
    belongs_to :recipe
    belongs_to :ingredient
    belongs_to :unit

    validates :value,
    presence: true,
    numericality: { grater_than: 0 }

end
