import React from "react";

class IndexItem extends React.Component {
    constructor(props) {
        super(props)
    }
    render () {
        let {business} = this.props
        return (
            <div>
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
        );
    }
}

export default IndexItem;