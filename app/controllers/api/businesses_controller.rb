class Api::BusinessesController < ApplicationController
    def index
        businesses = params[:bounds] ? Business.in_bounds(params[:bounds]) : Business.all
        if params[:name] != ''
            businesses = businesses.where("LOWER(name) LIKE LOWER(?) 
                                            OR LOWER(category) LIKE LOWER(?)
                                            OR LOWER(price) LIKE LOWER(?)", 
                                            "%" + params[:name] + "%", "%" + params[:name] + "%", params[:name])
        end
        @businesses = businesses
        render :index
    end

    def show
        @business = Business.find_by(id: params[:id])
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
            :website,
            photos: []
        )
    end
end
