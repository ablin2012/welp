class Business < ApplicationRecord
    validates :name, :category, :city, :state, :zip_code, :lat, :lng, :phone, :hours, :price, presence:true
    validates :address, presence:true, uniqueness:true

    has_many_attached :photos

    has_many :reviews,
        primary_key: :id,
        foreign_key: :business_id,
        class_name: :Review

    def self.in_bounds(bounds)
        self.where("lat < ?", bounds[:northEast][:lat])
            .where("lat > ?", bounds[:southWest][:lat])
            .where("lng > ?", bounds[:southWest][:lng])
            .where("lng < ?", bounds[:northEast][:lng])
    end
end
