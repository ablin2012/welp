import React from "react";
import { updateFilter } from "../../actions/filter_actions";
import BusinessIndex from "../business/business_index";
import BusinessMap from "../business/business_map";

class Search extends React.Component {
    constructor(props) {
        super(props);
        this.handleFilter = this.handleFilter.bind(this);
    }

    handleFilter(filter, value) {
        return () => this.props.updateFilter(filter, value);
    }

    render () {
        let {businesses, updateFilter} = this.props
        return (
            <div className="search-page">
                <div className="filter-buttons">
                    <h3>Filters</h3>
                    <div className="price-filter">
                        <button onClick={this.handleFilter('name', '$')} >$</button>
                        <button onClick={this.handleFilter('name', '$$')} >$$</button>
                        <button onClick={this.handleFilter('name', '$$$')} >$$$</button>
                        <button onClick={this.handleFilter('name', '$$$$')} >$$$$</button>
                    </div>
                </div>
                <BusinessIndex businesses={businesses}/>
                <div className="search-map-container">
                    <BusinessMap mapType="search-map"
                        businesses={businesses} 
                        updateFilter={updateFilter} 
                        singleBusiness={false}
                        />
                </div>
            </div>
        )
    }
}

export default Search;