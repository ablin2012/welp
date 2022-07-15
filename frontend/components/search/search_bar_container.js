import { connect } from "react-redux";
import { updateFilter } from "../../actions/filter_actions";
import SearchBar from "./search_bar";

const mapStateToProps = (state) => {
    return {
        searchParams: {name: '', location: ''}
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter,value) => dispatch(updateFilter(filter, value))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar)