require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(email: 'testing@example.com', password: 'password', password_confirmation: 'password') }

  it('should validate street') do
    apartment = user.apartments.create(
      unit: '200',
      city: 'cityName',
      state: 'stateName',
      square_footage: 1400,
      price: '1600',
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:street]).to include "can't be blank"
  end

  # unit test
  it('should validate unit') do
    apartment = user.apartments.create(
      street: '5 main street',
      city: 'cityName',
      state: 'stateName',
      square_footage: 1400,
      price: '1600',
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:unit]).to include "can't be blank"
  end

  # city test - ray
  # state test - ray
  # square_footage test - dre
  # price test - dre
  # bedrooms test - dre
  # bathrooms test - nguyen
  # pets test - nguyen
  # image test - nguyen
end
