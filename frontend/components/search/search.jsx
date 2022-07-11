import React from "react";
import BusinessIndex from "../business/business_index";
import BusinessMap from "../business_map/business_map";

class Search extends React.Component {
    constructor(props) {
        super(props);
    }

    render () {
        let {businesses, fetchBusinesses} = this.props
        return (
            <div>
                <BusinessMap />
                <BusinessIndex businesses={businesses} fetchBusinesses={fetchBusinesses}/>
            </div>
        )
    }
}

export default Search;