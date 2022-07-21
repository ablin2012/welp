import React from "react";
import ReviewsIndexContainer from "../reviews/reviews_index_container";

class ReviewForm extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            business_id: this.props.review.business_id,
            rating: this.props.review.rating,
            body: this.props.review.body,
            numStars: 'zero',
            permStars: null
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleClick = this.handleClick.bind(this);
        this.handleHover = this.handleHover.bind(this);
        this.handleUnhover = this.handleUnhover.bind(this);
    }

    componentDidMount() {
        let {rating} = this.props.review;
        if (this.props.formType === 'Update Review') {
            if (rating === 1) {
                this.setState({permStars: 'one', numStars: 'one'})
            } else if (rating === 2) {
                this.setState({permStars: 'two', numStars: 'two'})
            } else if (rating === 3) {
                this.setState({permStars: 'three', numStars: 'three'})
            } else if (rating === 3) {
                this.setState({permStars: 'four', numStars: 'four'})
            } else {
                this.setState({permStars: 'five', numStars: 'five'})
            }
        }
    }
    update(field) {
        return e => {this.setState({[field]: e.currentTarget.value})}
    }

    handleSubmit(e) {
        e.preventDefault();
        let finalReview;
        if (this.props.formType === 'Update Review') {
            finalReview = Object.assign({}, {id: this.props.review.id}, {rating: this.state.rating}, {body: this.state.body}, {business_id: this.state.business_id});
        } else {
            finalReview = Object.assign({}, {rating: this.state.rating}, {body: this.state.body}, {business_id: this.state.business_id});
        }
        // debugger;
        this.props.submitReview(finalReview);
    }

    handleHover(numStr) {
        return () => this.setState({numStars: numStr})
    }

    handleUnhover() {
        if (this.state.permStars) {
            return () => this.setState({numStars: this.state.permStars});
        } else {
            return () => this.setState({numStars: 'zero'});
        }
    }

    handleClick(numStr, rating) {
        return () => {
            this.setState({permStars: numStr, rating: rating});
        }
    }

    render() {
        let {formType, review} = this.props;
        let {numStars} = this.state;
        let radioText;
        if (numStars === 'zero') {
            radioText = 'Select a Rating';
        } else if (numStars === 'one') {
            radioText = 'Not Good';
        } else if (numStars === 'two') {
            radioText = 'Could\'ve been better';
        } else if (numStars === 'three') {
            radioText = 'OK';
        } else if (numStars === 'four') {
            radioText = 'Good';
        } else if (numStars === 'five') {
            radioText = 'Great'
        }
        return (
            <div className="form-container">
                <div className="form">
                    <div className="inner-form">
                        <h1>{review.businessName}</h1>
                        <form onSubmit={this.handleSubmit}>
                            <div className="form-inputs">
                                <fieldset className="rating-selector">
                                    <ul className={`stars ${this.state.numStars}`}>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" onClick={this.handleClick('one', 1)} 
                                                    onMouseEnter={this.handleHover('one')} onMouseLeave={this.handleUnhover()}/>
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" onClick={this.handleClick('two', 2)} 
                                                    onMouseEnter={this.handleHover('two')} onMouseLeave={this.handleUnhover()}/>
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" onClick={this.handleClick('three', 3)}
                                                    onMouseEnter={this.handleHover('three')} onMouseLeave={this.handleUnhover()}/>
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper">
                                                <input className="star-input" type="radio" name="rating" onClick={this.handleClick('four', 4)}
                                                    onMouseEnter={this.handleHover('four')} onMouseLeave={this.handleUnhover()}/>
                                            </div>
                                        </li>
                                        <li className="star">
                                            <div className="star-wrapper five">
                                                <input className="star-input" type="radio" name="rating" onClick={this.handleClick('five', 5)}
                                                    onMouseEnter={this.handleHover('five')} onMouseLeave={this.handleUnhover()}/>
                                            </div>
                                        </li>
                                    </ul>
                                    {radioText}
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