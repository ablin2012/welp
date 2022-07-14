import { connect } from "react-redux";
import BusinessShow from "./business_show";
import { fetchBusiness, removeReviews } from "../../actions/business_actions";

const mapStateToProps = (state, ownProps) => {
    return {
        business: state.entities.businesses[ownProps.match.params.businessId],
        businessId: parseInt(ownProps.match.params.businessId)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        fetchBusiness: (id) => dispatch(fetchBusiness(id)),
        removeReviews: () => dispatch(removeReviews())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(BusinessShow)