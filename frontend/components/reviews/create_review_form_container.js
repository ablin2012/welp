import { connect } from "react-redux";
import { createReview, fetchBusiness } from "../../actions/business_actions"
import ReviewForm from "./review_form";

const mapStateToProps = (state, ownProps) => {
    return {
        review: {rating: 0, body: '', business_id: ownProps.match.params.businessId},
        formType: 'Post Review',
        businessId: ownProps.match.params.businessId,
        business: state.entities.businesses[ownProps.match.params.businessId]
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        submitReview: (review) => dispatch(createReview(review)),
        fetchBusiness: (id) => dispatch(fetchBusiness(id))
    }
}

export default connect(mapStateToProps,mapDispatchToProps)(ReviewForm);