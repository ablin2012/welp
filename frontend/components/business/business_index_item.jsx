import React from "react";
import { Link } from "react-router-dom";
import {avgRatingClass, shortenStr} from "../../util/misc_util";

class IndexItem extends React.Component {
    constructor(props) {
        super(props)
    }

    render () {
        let {business, idx} = this.props;
        let avgClass = avgRatingClass(business.avgRating);
        let firstRev = shortenStr(business.firstReview.body, 200)
        let reviewInfo = (business.avgRating) ? (
            <div className="review-sub">
                <small>
                    <i class="far fa-comment-alt"></i> "{firstRev}"
                </small>
            </div>
        ) : (
            <div className="review-sub">
                <small>No Reviews Yet</small>
            </div>
        )
        let websiteButton = (business.website) ? (
            <div className="listing-btn">
                <button className="wbtn white"><a href={business.website}>View Website</a></button>
            </div>
        ) : (null)
        return (
            <div className="business-listing">
                <Link className="business-listing-link" to={`/businesses/${business.id}`}>
                    <div className="listing-left">
                        <div className="img-icon-container">
                            <img className="img-icon" src={business.photoUrls[0]}/>
                        </div>
                    </div>
                    <div className="listing-right">
                        <div className="info-container">
                            <h2>{idx + 1}. {business.name}</h2>
                            <div className={`stars ${avgClass}`}></div>
                            <div className="listing-info">
                                <p>{business.category}</p>
                                <p>{business.price}</p>
                                <p>{business.city}</p>
                            </div>
                            <div className="listing-hours">Open {business.hours}</div>
                            {reviewInfo}
                        </div>
                        {websiteButton}
                    </div>
                </Link>
            </div>
        );
    }
}

export default IndexItem;