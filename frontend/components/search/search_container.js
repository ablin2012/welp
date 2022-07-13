import { connect } from "react-redux";
import { updateFilter } from "../../actions/filter_actions";
import Search from "./search";
// import { fetchAllBusinesses } from "../../actions/business_actions";

const mapStateToProps = ({entities}) => {
    return {
        businesses: Object.values(entities.businesses)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
        // fetchAllBusinesses: () => dispatch(fetchAllBusinesses())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Search);