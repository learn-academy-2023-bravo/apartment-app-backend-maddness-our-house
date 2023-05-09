class Apartment < ApplicationRecord
    belongs_to :user

    validates :street, :unit, presence: true
end
