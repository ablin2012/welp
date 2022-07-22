import { connect } from "react-redux";
import SplashPage from "./splash_page";
import { updateFilter, clearFilters } from "../../actions/filter_actions";

const mapStateToProps = (state) => {
    return {

    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
        clearFilters: () => dispatch(clearFilters())
    }
}

export default connect(null, mapDispatchToProps)(SplashPage);