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

    render() {
        let {review, user, currentUserId} = this.props;
        let rateClass = avgRatingClass(review.rating);
        let lname = user.lastName.slice(0,1) + '.';
        let deleteButton = (review.userId === currentUserId) ? (
            <div>
                <button onClick={this.deleteReview}>delete</button>
                <button onClick={this.updateReview}>update</button>
            </div>
        ) : (
            null
        )
        return (
            <div className="review-container">
                <div className="review-info">
                    <div className="author-info">
                        <div className="profile-pic" style={{backgroundImage: 'url(' + user.photoUrl + ')'}}>
                        </div>
                        <h2>{user.firstName} {lname}</h2>
                    </div>
                    <div className={`stars ${rateClass}`}></div>
                    <div className="review-body">{review.body}</div>
                    {deleteButton}
                </div>
            </div>
        );
    }
}

export default withRouter(ReviewsIndexItem);