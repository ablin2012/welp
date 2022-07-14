import * as BusinessAPIUtil from '../util/business_api_util';

export const RECEIVE_BUSINESSES = "RECEIVE_BUSINESSES";
export const RECEIVE_BUSINESS = "RECEIVE_BUSINESS";
export const RECEIVE_REVIEW = "RECEIVE_REVIEW";
export const REMOVE_REVIEWS = "REMOVE_REVIEWS";

const receiveBusinesses = (businesses) => {
    return {
        type: RECEIVE_BUSINESSES,
        businesses
    }
}

const receiveBusiness = ({ business, reviews, users }) => {
    return {
        type: RECEIVE_BUSINESS,
        business,
        reviews,
        users
    }
}

const receiveReview = ({review, user}) => {
    return {
        type: RECEIVE_REVIEW,
        review,
        user
    }
}

export const removeReviews = () => {
    return {
        type: REMOVE_REVIEWS
    }
}

export const fetchBusinesses = (filters) => dispatch => {
    return BusinessAPIUtil.fetchBusinesses(filters)
        .then((businesses) => dispatch(receiveBusinesses(businesses)))
}

// export const fetchAllBusinesses = () => dispatch => {
//     return BusinessAPIUtil.fetchAllBusinesses()
//         .then((businesses) => dispatch(receiveBusinesses(businesses)))
// }

export const fetchBusiness = (id) => dispatch => {
    return BusinessAPIUtil.fetchBusiness(id)
        .then((payload) => dispatch(receiveBusiness(payload)))
}

export const createReview = (review) => dispatch => {
    return BusinessAPIUtil.createReview(review)
        .then((review) => dispatch(receiveReview(review)))
}