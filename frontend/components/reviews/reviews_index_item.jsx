import React from "react";
import { withRouter } from "react-router-dom";
import { avgRatingClass } from "../../util/misc_util"

class ReviewsIndexItem extends React.Component {
    constructor(props) {
        super(props);
        this.deleteReview = this.deleteReview.bind(this);
        this.updateReview = this.updateReview.bind(this);
    }

    deleteReview(e) {
        e.preventDefault();
        this.props.deleteReview(this.props.review.id)
    }

    updateReview(e) {
        e.preventDefault();
        this.props.history.push(`/reviews/${this.props.review.id}/edit`)
    }

    handleDrop() {
        document.getElementById("my-dropdown").classList.toggle('show')
    }

    render() {
        let {review, user, currentUserId, customStyle} = this.props;
        let rateClass = avgRatingClass(review.rating);
        let lname = user.lastName.slice(0,1) + '.';
        let deleteButton = (review.userId === currentUserId) ? (
            <div className="dropdown">
                <button onClick={this.handleDrop} className="drop-btn">...</button>
                <div id="my-dropdown" className="dropdown-content">
                    <button onClick={this.deleteReview}>Delete</button>
                    <button onClick={this.updateReview}>Update</button>
                </div>
            </div>
        ) : (
            null
        )
        return (
            <div className={`review-container ${customStyle}`} >
                <div className="review-info">
                    <div className={`author-info ${customStyle}`}>
                        <div className="profile-pic" style={{backgroundImage: 'url(' + user.photoUrl + ')'}}></div>
                        <div className="review-right">
                            <div>
                                <h2>{user.firstName} {lname}</h2>
                            </div>
                            {deleteButton}
                        </div>
                    </div>
                    <div className={`stars ${rateClass}`}></div>
                    <div className="review-body">{review.body}</div>
                </div>
            </div>
        );
    }
}

export default withRouter(ReviewsIndexItem);