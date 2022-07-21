json.review do
  json.partial! '/api/reviews/review', review: @review
  json.businessName @review.business.name
end

json.user do
  json.partial! '/api/users/user', user: @review.user
end

