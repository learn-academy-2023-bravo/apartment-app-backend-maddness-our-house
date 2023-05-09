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
end
