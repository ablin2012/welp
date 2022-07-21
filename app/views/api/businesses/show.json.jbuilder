# json.set! @business.id do
#  json.partial! 'business', business: @business
# end

json.business do
    json.partial! 'business', business: @business
end

@business.reviews.each do |review|
  json.reviews do
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end

json.users do
    json.set! review.user.id do
      json.extract! review.user, :id, :first_name, :last_name
      json.photoUrl url_for(review.user.photo)
    end
  end
end