class Quantity < ApplicationRecord
    belongs_to :receipe
    belongs_to :ingredient
    belongs_to :unit

    validates :value,
    presence: true,
    numericality: { grater_than: 0 }

end
