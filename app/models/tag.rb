class Tag < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :recipes

    validates :title,
              presence: true,
              uniqueness: true,
              length: { minimum: 3 }

end
