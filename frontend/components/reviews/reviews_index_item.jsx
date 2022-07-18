import React from "react";
import { withRouter } from "react-router-dom";

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
                    <h2>{user.firstName}</h2>
                    <h3>{review.rating}</h3>
                    <p>{review.body}</p>
                    {deleteButton}
                </div>
            </div>
        );
    }
}

export default withRouter(ReviewsIndexItem);