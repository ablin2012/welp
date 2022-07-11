import React from "react";

class BusinessShow extends React.Component{
    constructor(props){
        super(props);
    }

    render() {
        let {business} = this.props
        return (
            <div>
                <h1>{business.name}</h1>
            </div>
        );
    }
}

export default BusinessShow