class Apartment < ApplicationRecord
    belongs_to :user

    validates :street, :unit, :city, :state, :square_footage, :bedrooms, :bathrooms, :pets, :image, :price, :manager, presence: true
end
