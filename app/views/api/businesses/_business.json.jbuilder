json.extract! business, :id, :name, :category, :address, :city, :state, :zip_code, :lat, :lng, :phone, :hours, :price, :website
json.avgRating business.average_rating
json.firstReview business.reviews.first
json.photoUrls business.photos.map { |file| url_for(file) }