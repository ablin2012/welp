import { connect } from "react-redux";
import { updateFilter } from "../../actions/filter_actions";
import Search from "./search";

const mapStateToProps = ({entities}) => {
    return {
        businesses: Object.values(entities.businesses)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Search);