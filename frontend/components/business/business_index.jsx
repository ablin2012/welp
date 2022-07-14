import React from "react";
import IndexItem from "./business_index_item";


class BusinessIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        let {businesses} = this.props
        return (
            <div className="business-index">
                <h3>All Results</h3>
                <div className="business-list">
                    {businesses.map((business, idx) => {
                        return (<IndexItem business={business} idx={idx} key={business.id} />)
                    })}
                </div>
            </div>
        );
    }
}

export default BusinessIndex;