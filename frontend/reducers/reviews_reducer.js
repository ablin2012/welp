import { RECEIVE_BUSINESS, RECEIVE_REVIEW, REMOVE_REVIEWS } from "../actions/business_actions";

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_BUSINESS:
            return Object.assign({}, state, action.reviews);
        case RECEIVE_REVIEW:
            const { review } = action;
            return Object.assign({}, state, { [review.id]: review });
        case REMOVE_REVIEWS:
            return {};
        default:
            return state;
    }
}

export default reviewsReducer;