import React from "react";
import { Link } from "react-router-dom";

class IndexItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render () {
        let {business} = this.props
        return (
            <Link className="business-listing-link" to={`/businesses/${business.id}`}>
                <div className="business-listing">
                    <h2>{business.name}</h2>
                    <br/>
                    <div>
                        <p>{business.category}</p>
                        <p>{business.price}</p>
                        <p>{business.city}</p>
                    </div>
                    <br/>
                    <div>{business.hours}</div>
                </div>
            </Link>
        );
    }
}

export default IndexItem;