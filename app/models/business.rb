class Business < ApplicationRecord
    validates :name, :category, :city, :state, :zip_code, :lat, :lng, :phone, :hours, :price, presence:true
    validates :address, presence:true, uniqueness:true
end
