import React from "react";
import ReviewsIndexItem from "./reviews_index_item";

class ReviewsIndex extends React.Component {
    render() {
        let {reviews, users} = this.props;
        return (
            <div className="reviews-index">
                <h2>Recommended Reviews</h2>
                <div className="reviews-list">
                    {reviews.map((review) => {
                        return (<ReviewsIndexItem review={review} user={users[review.userId]} key={review.id} />)
                    })}
                </div>
            </div>
        );
    }
}

export default ReviewsIndex;