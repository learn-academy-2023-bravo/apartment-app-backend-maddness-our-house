class ApartmentsController < ApplicationController
    def index
        apartments = Apartment.all
        render json: apartments
    end

    def create
        apartment = Apartment.create(apartment_params)
        if apartment.valid?
            render json: apartment
        else
            render json: apartments.errors
        end
    end

    def update
    end

    def destroy
    end

    private
    def apartment_params
    params.require(:apartment).permit(
        :user_id,
        :street,
        :unit,
        :city,
        :state,
        :square_footage,
        :price,
        :bedrooms,
        :bathrooms,
        :pets,
        :image,
        :manager)
    end
end
