import React from "react";
import IndexItem from "./business_index_item";


class BusinessIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        let {businesses} = this.props
        return (
            <div>
                <h3>All Businesses</h3>
                {businesses.map((business) => {
                    return (<IndexItem business={business} key={business.id} />)
                })}
            </div>
        );
    }
}

export default BusinessIndex;