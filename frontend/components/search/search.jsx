import React from "react";
import BusinessIndex from "../business/business_index";
import BusinessMap from "../business/business_map";

class Search extends React.Component {
    constructor(props) {
        super(props);
        this.handleFilter = this.handleFilter.bind(this);
    }

    componentDidMount(){
        if (this.props.location.search) {
            this.props.updateFilter('name', this.props.location.search.slice(1))
        }
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
                        <button className="filter-button first" onClick={this.handleFilter('price', '$')} >$</button>
                        <button className="filter-button" onClick={this.handleFilter('price', '$$')} >$$</button>
                        <button className="filter-button" onClick={this.handleFilter('price', '$$$')} >$$$</button>
                        <button className="filter-button last" onClick={this.handleFilter('price', '$$$$')} >$$$$</button>
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