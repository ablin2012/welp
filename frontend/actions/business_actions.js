import * as BusinessAPIUtil from '../util/business_api_util';

export const RECEIVE_BUSINESSES = "RECEIVE_BUSINESSES";
export const RECEIVE_BUSINESS = "RECEIVE_BUSINESS";
export const RECEIVE_REVIEW = "RECEIVE_REVIEW";

const receiveBusinesses = (businesses) => {
    return {
        type: RECEIVE_BUSINESSES,
        businesses
    }
}

const receiveBusiness = ({ business, reviews }) => {
    return {
        type: RECEIVE_BUSINESS,
        business,
        reviews
    }
}

const receiveReview = (review) => {
    return {
        type: RECEIVE_REVIEW,
        review
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