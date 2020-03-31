class Unit < ApplicationRecord

    validates :name,
            presence: true,
            length: { minimum: 3 }
    validates :name,
            length: { minimum: 1 }
end
