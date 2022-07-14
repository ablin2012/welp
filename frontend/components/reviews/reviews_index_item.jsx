import React from "react";

class ReviewsIndexItem extends React.Component {
    render() {
        let {review, user} = this.props;
        console.log(this.props)
        return (
            <div className="review-container">
                <div className="review-info">
                    <h2>{user.firstName}</h2>
                    <h3>{review.rating}</h3>
                    <p>{review.body}</p>
                </div>
            </div>
        );
    }
}

export default ReviewsIndexItem;