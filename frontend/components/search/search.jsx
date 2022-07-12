import React from "react";
import BusinessIndex from "../business/business_index";
import BusinessMap from "../business/business_map";

class Search extends React.Component {
    constructor(props) {
        super(props);
    }

    render () {
        let {businesses, updateFilter} = this.props
        return (
            <div>
                <BusinessMap mapType="search-map-container"
                    businesses={businesses} 
                    updateFilter={updateFilter} 
                    singleBusiness={false}/>
                <BusinessIndex businesses={businesses}/>
            </div>
        )
    }
}

export default Search;