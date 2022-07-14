json.extract! business, :id, :name, :category, :address, :city, :state, :zip_code, :lat, :lng, :phone, :hours, :price, :website

json.photoUrls business.photos.map { |file| url_for(file) }