require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    user1 = User.where(email:'testing1@example.com').first_or_create(password:'password', password_confirmation:'password')
    it "gets a list of apartments" do
      user1.apartments.create(
        street: 'Welcome Ave.',
        unit: '10',
        city: 'Crystal',
        state: 'Minnesota',
        square_footage: 1000,
        price: '1800',
        bedrooms: 3,
        bathrooms: 1.5,
        pets: 'no',
        image: 'https://tse1.mm.bing.net/th?id=OIP.PeXLTAq4rYPNPueypjWwngHaEJ&pid=Api&P=0',
        manager:'Mr. Nguyen'
      )
      get "/apartments"
      apartments = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartments.length).to eq 1
    end  
  end
  describe "POST /create" do
    user1 = User.where(email:'testing1@example.com').first_or_create(password:'password', password_confirmation:'password')
    it"creates an apartment" do
      apartment_params = {
        apartment: {
          street: 'Welcome Ave.',
          unit: '10',
          city: 'Crystal',
          state: 'Minnesota',
          square_footage: 1000,
          price: '1800',
          bedrooms: 3,
          bathrooms: 1.5,
          pets: 'no',
          image: 'https://tse1.mm.bing.net/th?id=OIP.PeXLTAq4rYPNPueypjWwngHaEJ&pid=Api&P=0',
          manager:'Mr. Nguyen',
          user_id: user1.id 
        }
      }
      post "/apartments", params: apartment_params
      expect(response).to have_http_status(200)
      apartment = Apartment.first
      expect(apartment.street).to eq 'Welcome Ave.'
      expect(apartment.unit).to eq '10'
      expect(apartment.city).to eq 'Crystal'
      expect(apartment.state).to eq 'Minnesota'
      expect(apartment.square_footage).to eq 1000
      expect(apartment.price).to eq '1800'
      expect(apartment.bedrooms).to eq 3
      expect(apartment.bathrooms).to eq 1.5
      expect(apartment.pets).to eq 'no'
      expect(apartment.image).to eq 'https://tse1.mm.bing.net/th?id=OIP.PeXLTAq4rYPNPueypjWwngHaEJ&pid=Api&P=0'
      expect(apartment.manager).to eq 'Mr. Nguyen'
    end
  end
end
