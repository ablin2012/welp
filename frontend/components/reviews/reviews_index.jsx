import React from "react";
import ReviewsIndexItem from "./reviews_index_item";

class ReviewsIndex extends React.Component {
    render() {
        let customStyle = '';
        if (this.props.customStyle) {
            customStyle = this.props.customStyle;
        }
        let {reviews, users, currentUserId, deleteReview} = this.props;
        return (
            <div className="reviews-index">
                <div className="reviews-list">
                    {reviews.map((review) => {
                        return (<ReviewsIndexItem 
                            review={review} 
                            user={users[review.userId]} 
                            currentUserId={currentUserId}
                            deleteReview={deleteReview}
                            key={review.id} 
                            customStyle={customStyle}/>)
                    })}
                </div>
            </div>
        );
    }
}

export default ReviewsIndex;