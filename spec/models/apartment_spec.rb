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
  it('should validate city') do
    apartment = user.apartments.create(
      street: '5 main street',
      unit: '7A',
      state: 'stateName',
      square_footage: 1400,
      price: '1600',
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:city]).to include "can't be blank"
  end
  # state test - ray
  it('should validate state') do
    apartment = user.apartments.create(
      street: '5 main street',
      unit: '7A',
      city: 'burg',
      square_footage: 1400,
      price: '1600',
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:state]).to include "can't be blank"
  end
  # square_footage test - Dre
  it('should validate square footage') do
    apartment = user.apartments.create(
      street: '5 main street',
      unit: '200',
      city: 'cityName',
      state: 'stateName',
      price: '1600',
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:square_footage]).to include "can't be blank"
  end
# price test - Dre
  it('should validate price') do
    apartment = user.apartments.create(
      street: '5 main street',
      unit: '200',
      city: 'cityName',
      state: 'stateName',
      square_footage: 1400,
      bedrooms: 3,
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:price]).to include "can't be blank"
  end
# bedrooms test - Dre
  it('should validate bedrooms') do
    apartment = user.apartments.create(
      street: '5 main street',
      unit: '200',
      city: 'cityName',
      state: 'stateName',
      square_footage: 1400,
      price: '1600',
      bathrooms: 1.5,
      pets: 'yes!',
      image: 'image.url'
    )

    expect(apartment.errors[:bedrooms]).to include "can't be blank"
  end
  # square_footage test - dre
  # price test - dre
  # bedrooms test - dre
  # bathrooms test - nguyen
  # pets test - nguyen
  # image test - nguyen
end
