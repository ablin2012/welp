import { connect } from "react-redux";
import ReviewsIndex from "./reviews_index";
import {deleteReview} from "../../actions/business_actions";


const mapStateToProps = ({entities, session}) => {
    return {
        reviews: Object.values(entities.reviews),
        users: entities.users,
        currentUserId: session.id
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        deleteReview: (reviewId) => dispatch(deleteReview(reviewId))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ReviewsIndex);

