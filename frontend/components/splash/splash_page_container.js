import { connect } from "react-redux";
import SplashPage from "./splash_page";
import { updateFilter } from "../../actions/filter_actions";

const mapStateToProps = (state) => {
    return {

    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter, value) => dispatch(updateFilter(filter, value))
    }
}

export default connect(null, mapDispatchToProps)(SplashPage);