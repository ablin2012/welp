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
                    <div className="inner-form">
                        <h1>{business.name}</h1>
                        <form onSubmit={this.handleSubmit}>
                            <div className="form-inputs">
                                <fieldset className="rating-selector">
                                    <ul className="stars">
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" value={1} onClick={this.update('rating')} />
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" value={2} onClick={this.update('rating')} />
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" value={3} onClick={this.update('rating')} />
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" value={4} onClick={this.update('rating')} />
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" value={5} onClick={this.update('rating')} />
                                            </div>
                                        </li>
                                    </ul>
                                </fieldset>
                                <textarea type="text" 
                                    value={this.state.body} 
                                    onChange={this.update('body')} 
                                    placeholder="This is a sample review. You can talk about how much you liked the food or how the service was good. Maybe talk about your favorite dish, or how you enjoy the atmosphere of the building, or even the smell when you walk in the door. Talk about a personal experience at this place and why it's your go to. Unless you hate this place. Then go crazy about all the things you hate."
                                    />
                                <small>Sharing feedback? Your understanding will go a long way.</small>
                            </div>
                            <button className="wbtn">{formType}</button>
                        </form>
                    </div>
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