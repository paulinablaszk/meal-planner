class Receipe < ApplicationRecord
    belongs_to :user
    has_many :quantities
    has_many :ingredients, through: :quantities
    has_many :units, through: :quantities
    has_and_belongs_to_many :tags

    validates :title,
              presence: true,
              length: { minimum: 3 }
    validates :prep_time,
              numericality: { grater_than: 0 }
    validates :servings,
              numericality: { grater_than: 0 }

end
