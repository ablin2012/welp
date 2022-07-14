export const fetchBusinesses = (filters) => {
    return $.ajax({
        method: 'GET',
        url: '/api/businesses',
        data: filters
    })
}

// export const fetchAllBusinesses = () => {
//     return $.ajax({
//         method: 'GET',
//         url: '/api/businesses',
//     })
// }

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
