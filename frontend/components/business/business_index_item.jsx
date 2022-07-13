import React from "react";
import { Link } from "react-router-dom";

class IndexItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render () {
        let {business} = this.props
        let websiteButton = (business.website) ? (
            <button className="wbtn"><a href={business.website}>View Website</a></button>
        ) : (null)
        return (
            <div className="business-listing">
                <Link className="business-listing-link" to={`/businesses/${business.id}`}>
                        <h2>{business.name}</h2>
                        <div className="listing-info">
                            <p>{business.category}</p>
                            <p>{business.price}</p>
                            <p>{business.city}</p>
                        </div>
                        <div className="listing-hours">Open {business.hours}</div>
                </Link>
                {websiteButton}
            </div>
        );
    }
}

export default IndexItem;