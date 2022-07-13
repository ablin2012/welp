import * as BusinessAPIUtil from '../util/business_api_util';

export const RECEIVE_BUSINESSES = "RECEIVE_BUSINESSES";
export const RECEIVE_BUSINESS = "RECEIVE_BUSINESS"

const receiveBusinesses = (businesses) => {
    return {
        type: RECEIVE_BUSINESSES,
        businesses
    }
}

const receiveBusiness = (business) => {
    return {
        type: RECEIVE_BUSINESS,
        business
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
        .then((business) => dispatch(receiveBusiness(business)))
}