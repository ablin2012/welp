import React from "react";
import BusinessIndex from "../business/business_index";
import BusinessMap from "../business/business_map";

class Search extends React.Component {
    constructor(props) {
        super(props);
    }

    // componentDidMount () {
    //     console.log('working')
    //     this.props.fetchBusinesses();
    // }

    render () {
        let {businesses, updateFilter, fetchAllBusinesses} = this.props
        return (
            <div className="search-page">
                <BusinessIndex businesses={businesses}/>
                <BusinessMap mapType="search-map-container"
                    businesses={businesses} 
                    updateFilter={updateFilter} 
                    singleBusiness={false}
                    // fetchAllBusinesses={fetchAllBusinesses}
                    />
            </div>
        )
    }
}

export default Search;