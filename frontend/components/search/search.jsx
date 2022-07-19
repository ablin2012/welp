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
            <div className="search-page">
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