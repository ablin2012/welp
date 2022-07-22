export const fetchBusinesses = (filters) => {
    return $.ajax({
        method: 'GET',
        url: '/api/businesses',
        data: filters
    })
}

export const fetchBusiness = (id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/businesses/${id}`,
    })
}

export const createReview = (review) => {
    return $.ajax({
        method: 'POST',
        url: `/api/businesses/${review.business_id}/reviews`,
        data: { review }
    })
}

export const fetchReview = (reviewId) => {
    return $.ajax({
        method: 'GET',
        url: `/api/reviews/${reviewId}`
    })
}

export const deleteReview = (reviewId) => {
    return $.ajax({
        method: 'DELETE',
        url: `/api/reviews/${reviewId}`
    })
}

export const updateReview = (review) => {
    return $.ajax({
        method: 'PATCH',
        url: `/api/reviews/${review.id}`,
        data: { review }
    })
}