class Api::BusinessesController < ApplicationController
    def index
        @businesses = Business.all
        render :index
    end

    def create
        @business = Business.create!(business_params)
        render :show
    end

    private
    def business_params
        params.require(:business).permit(
            :name,
            :category,
            :address,
            :city,
            :state,
            :zip_code,
            :lat,
            :lng,
            :phone,
            :hours,
            :price,
            :website
        )
    end
end
