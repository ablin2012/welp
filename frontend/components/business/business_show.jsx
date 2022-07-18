import React from "react";
import ReviewsIndexContainer from "../reviews/reviews_index_container";
import BusinessMap from "./business_map";
import { Link } from "react-router-dom";
import { shortenStr } from "../../util/misc_util";

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
        let websiteStr = shortenStr(business.website, 20);
        let sidebar = (business.website) ? (
            <>
                <div className="module bottom-border"><a href={business.website} target="_blank">{websiteStr}</a></div>
                <div className="module bottom-border">{business.phone}</div>
                <div className="module">
                    <a href={`https://www.google.com/maps?q=${business.lat},${business.lng}`} target="_blank">Get Directions</a>
                    <small>
                        {business.address} {business.city}, {business.state}
                    </small>
                    <small>
                        {business.zipCode}
                    </small>
                </div>
            </>
        ) : (
            <>
                <div className="bottom-border" >{business.phone}</div>
                <div>
                    <h2>Get Directions</h2>
                    {business.address} {business.city}, {business.state}
                    {business.zip_code}
                </div>
        </>
        )
        const businesses = business;
        return (
            <div className="business-show-page">
                <div className="show-header" style={{backgroundImage: 'linear-gradient(to bottom, rgba(245, 246, 252, 0), rgba(33, 33, 33, 0.7)), url(' + business.photoUrls[0] + ')'}}>
                    <div className="show-header-text">
                        <h1>{business.name}</h1>
                        <div>{business.price} {business.category}</div>
                        <div>Open {business.hours}</div>
                    </div>
                </div>
                <div className="show-body">
                    <div className="show-content">
                        <div className="btn-list">
                            <Link to={`/businesses/${businessId}/reviews/new`}><button className="wbtn"><i className="far fa-star" /> Write a Review</button></Link>
                        </div>
                        <div className="show-info-container">
                            <div className="show-info-left">
                                <h2>Location & Hours</h2>
                                <BusinessMap mapType="single-map-container"
                                    centerLat={business.lat}
                                    centerLng={business.lng}
                                    fetchBusiness={fetchBusiness} 
                                    singleBusiness={true} 
                                    businesses={[business]} 
                                    businessId={businessId}/>
                                <div className="show-info-address">
                                    <small>
                                        <a href={`https://www.google.com/maps?q=${business.lat},${business.lng}`} target="_blank">{business.address}</a>
                                    </small>
                                    <small>
                                        {business.city}, {business.state} {business.zipCode}
                                    </small>
                                </div>
                            </div>
                            <div className="show-info-right">
                                <div className="hours-list">
                                    <div className="days">
                                        <p>Mon</p>
                                        <p>Tue</p>
                                        <p>Wed</p>
                                        <p>Thur</p>
                                        <p>Fri</p>
                                        <p>Sat</p>
                                        <p>Sun</p>
                                    </div>
                                    <div className="hours">
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                        <p>{business.hours}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="show-reviews-container">
                            <h3>Recommended Reviews</h3>
                            <ReviewsIndexContainer />
                        </div>
                    </div>
                    <div className="show-sidebar">
                        <div className="sidebar-container">
                            {sidebar}
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default BusinessShow