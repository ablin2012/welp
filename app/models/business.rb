class Business < ApplicationRecord
    validates :name, :category, :city, :state, :zip_code, :lat, :lng, :phone, :hours, :price, presence:true
    validates :address, presence:true, uniqueness:true

    def self.in_bounds(bounds)
        self.where("lat < ?", bounds[:northEast][:lat])
            .where("lat > ?", bounds[:southWest][:lat])
            .where("lng > ?", bounds[:southWest][:lng])
            .where("lng < ?", bounds[:northEast][:lng])
    end
end
