import React from "react";
import BusinessMap from "./business_map";

class BusinessShow extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.businessId);   
    }

    render() {
        let {business, fetchBusiness, businessId} = this.props;
        if (!business) {
            return null;
        }
        const businesses = business;
        return (
            <div>
                <h1>{business.name}</h1>
                <div>{business.price} {business.category}</div>
                <div>Open {business.hours}</div>
                <BusinessMap mapType="map-container"
                    centerLat={business.lat}
                    centerLng={business.lng}
                    fetchBusiness={fetchBusiness} 
                    singleBusiness={true} 
                    businesses={[business]} 
                    businessId={businessId}/>
            </div>
        );
    }
}

export default BusinessShow