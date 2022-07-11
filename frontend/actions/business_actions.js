import * as BusinessAPIUtil from '../util/business_api_util';
export const RECEIVE_BUSINESSES = "RECEIVE_BUSINESSES";

const receiveBusinesses = (businesses) => {
    return {
        type: RECEIVE_BUSINESSES,
        businesses
    }
}

export const fetchBusinesses = () => dispatch => {
    return BusinessAPIUtil.fetchBusinesses()
        .then((businesses) => dispatch(receiveBusinesses(businesses)))
}