import React from "react";
import ReviewsIndexContainer from "../reviews/reviews_index_container";
import BusinessMap from "./business_map";
import { Link } from "react-router-dom";

class BusinessShow extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.businessId);   
    }

    componentWillUnmount() {
        this.props.removeReviews();
    }

    render() {
        let {business, fetchBusiness, businessId} = this.props;
        if (!business) {
            return null;
        }
        const businesses = business;
        return (
            <div className="business-show-page">
                <h1>{business.name}</h1>
                <div>{business.price} {business.category}</div>
                <div>Open {business.hours}</div>
                <BusinessMap mapType="single-map-container"
                    centerLat={business.lat}
                    centerLng={business.lng}
                    fetchBusiness={fetchBusiness} 
                    singleBusiness={true} 
                    businesses={[business]} 
                    businessId={businessId}/>
                <Link to={`/businesses/${businessId}/reviews/new`}>Leave a Review</Link>
                <ReviewsIndexContainer />
            </div>
        );
    }
}

export default BusinessShow