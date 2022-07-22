import { connect } from "react-redux";
import { updateFilter, clearFilters } from "../../actions/filter_actions";
import SearchBar from "./search_bar";

const mapStateToProps = (state) => {
    return {
        searchParams: {name: '', location: ''}
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        updateFilter: (filter,value) => dispatch(updateFilter(filter, value)),
        clearFilters: () => dispatch(clearFilters())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar)