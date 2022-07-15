import React from "react";
import { connect } from "react-redux";
import { fetchReview, updateReview } from "../../actions/business_actions"
import ReviewForm from "./review_form";

class EditReviewForm extends React.Component {
    componentDidMount() {
        this.props.fetchReview(this.props.match.params.reviewId);
    }
  
    render () {
      // DO NOT MODIFY THIS FUNCTION
      const { review, formType, submitReview } = this.props;
  
      // Hint: The review will not exist on the first render - what do we need to do
      // to get it?
      if (!review) return null;
      return (
        <ReviewForm
          review={review}
          formType={formType}
          submitReview={submitReview} />
      );
    }
  }
  
  const mapStateToProps = (state, ownState) => {
    return {
      review: state.entities.reviews[ownState.match.params.reviewId],
      formType: 'Update Review'
    }
  }
  
  const mapDispatchToProps = (dispatch) => {
    return {
      submitReview: (review) => dispatch(updateReview(review)),
      fetchReview: (reviewId) => dispatch(fetchReview(reviewId))
    }
  }
  
  export default connect(mapStateToProps, mapDispatchToProps)(EditReviewForm);