class Tag < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :receipes

    validates :title,
              presence: true,
              uniqueness: true,
              length: { minimum: 3 }

end
