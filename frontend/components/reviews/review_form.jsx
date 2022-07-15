import React from "react";
import ReviewsIndexContainer from "../reviews/reviews_index_container";

class ReviewForm extends React.Component {
    constructor(props){
        super(props);
        this.state = this.props.review;
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    componentDidMount() {
        if (this.props.formType === 'Post Review') {
            this.props.fetchBusiness(this.props.businessId);  
        }
    }

    update(field) {
        return e => {this.setState({[field]: e.target.value})}
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.submitReview(this.state);
    }

    render() {
        let {formType, business} = this.props;
        if (!business) {
            return null;
        }
        return (
            <div className="form-container">
                <div className="form">
                    <form onSubmit={this.handleSubmit}>
                        <h1>{business.name}</h1>
                        <input type="radio" name="rating" value={1} onClick={this.update('rating')} />
                        <input type="radio" name="rating" value={2} onClick={this.update('rating')} />
                        <input type="radio" name="rating" value={3} onClick={this.update('rating')} />
                        <input type="radio" name="rating" value={4} onClick={this.update('rating')} />
                        <input type="radio" name="rating" value={5} onClick={this.update('rating')} />
                        <textarea type="text" value={this.state.body} onChange={this.update('body')} />
                        <button className="wbtn">{formType}</button>
                    </form>
                </div>
                <div className="recent-reviews">
                    <h2>Recent Reviews</h2>
                    <ReviewsIndexContainer />
                </div>
            </div>
        );
    }
}

export default ReviewForm;