import React from "react";
import ReviewsIndexContainer from "../reviews/reviews_index_container";
import BusinessMap from "./business_map";
import { Link } from "react-router-dom";
import { shortenStr, avgRatingBigClass } from "../../util/misc_util";

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
        let websiteStr;
        if (business.website) {
            websiteStr = shortenStr(business.website, 20);
        }
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
        </>)
        let avgClass = avgRatingBigClass(business.avgRating);
        return (
            <div className="business-show-page">
                <div className="show-header" >
                    <div className="show-header-image" style={{backgroundImage: 'linear-gradient(to bottom, rgba(245, 246, 252, 0), rgba(33, 33, 33, 0.7)), url(' + business.photoUrls[0] + ')'}}></div>
                    <div className="show-header-image" style={{backgroundImage: 'linear-gradient(to bottom, rgba(245, 246, 252, 0), rgba(33, 33, 33, 0.7)), url(' + business.photoUrls[1] + ')'}}></div>
                    <div className="show-header-image" style={{backgroundImage: 'linear-gradient(to bottom, rgba(245, 246, 252, 0), rgba(33, 33, 33, 0.7)), url(' + business.photoUrls[2] + ')'}}></div>
                    <div className="show-header-text">
                        <h1>{business.name}</h1>
                        <div className={`stars ${avgClass}`}></div>
                        <div>{business.price}  &#8226;  {business.category}</div>
                        <div>Open {business.hours}</div>
                    </div>
                </div>
                <div className="show-body">
                    <div className="show-content">
                        <div className="btn-list">
                            <Link to={`/businesses/${businessId}/reviews/new`}><button className="wbtn"><i className="far fa-star" /> Write a Review</button></Link>
                        </div>
                        <div className="show-info-container">
                            <h3>Location & Hours</h3>
                            <div className="show-info-main">
                                <div className="show-info-left">
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
                                    <div className="days">
                                        <div>Mon</div>
                                        <div>Tue</div>
                                        <div>Wed</div>
                                        <div>Thur</div>
                                        <div>Fri</div>
                                        <div>Sat</div>
                                        <div>Sun</div>
                                    </div>
                                    <div className="hours">
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                        <div>{business.hours}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="show-reviews-container">
                            <div><h3>Recommended Reviews</h3></div>
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