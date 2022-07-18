import React from "react";
import { Link } from "react-router-dom";

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            first_name: '',
            last_name: '',
            email: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.loginGuest = this.loginGuest.bind(this);
    } 

    componentDidMount() {
        this.props.clearSessionErrors();
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    loginGuest(e) {
        e.preventDefault();
        const guest = {email: 'guest@email.com', password: '123456'};
        this.props.loginGuest(guest);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value})
    }

    renderErrors() {
        return(
          <ul>
            {this.props.errors.map((error, i) => (
              <li key={`error-${i}`}>
                {error}
              </li>
            ))}
          </ul>
        );
    }

    render(){
        let {formType} = this.props;
        let formHeader, 
            altLink, 
            inputButtonText,
            subText,
            blurb,
            extraInputs = null;

        if (formType === 'signup') {
            formHeader = 'Sign Up for Welp';
            altLink = (<Link to='/login'>Login</Link>);
            inputButtonText = 'Sign Up';
            subText = 'Already on Welp? ';
            blurb = (
                <div>
                    <p>Connect with great local businesses</p>
                    <small className="subtle-text">By continuing, you agree to Welp's Terms of Service and acknowledge Welp's Privacy Policy.</small>
                </div>
            )
            extraInputs = (
                <div className="name-inputs">
                    <input id="first-name"
                        type="text" 
                        value={this.state.first_name} 
                        onChange={this.update('first_name')}
                        placeholder="First Name" /> 
                    <input id="last-name"
                        type="text" 
                        value={this.state.last_name} 
                        onChange={this.update('last_name')} 
                        placeholder="Last Name"/>
                </div>
            )
        } else {
            formHeader = 'Log In to Welp';
            altLink = <Link to='/signup'>Signup</Link>;
            inputButtonText = 'Log In';
            subText = 'New to Welp? ';
            blurb = (
                <div>
                    <p>{subText}{altLink}</p>
                    <small>By logging in, you agree to Welp's Terms of Service and Privacy Policy.</small>
                </div>
            )
        }
        return (
            <div className="login-page">
                <div className="column">
                    <div className="signup-form-container">
                        <div className="above-form">
                            <h2>{formHeader}</h2>
                            {blurb}
                            <button className="wbtn gray" 
                                onClick={this.loginGuest}>
                                    Login as Guest
                            </button>
                            <button className="wbtn blue" 
                                onClick={this.loginGuest}>
                                    Also Login as Guest
                            </button>
                            <button className="wbtn black" 
                                onClick={this.loginGuest}>
                                    Login as Guest Again
                            </button>
                        </div>
                        <fieldset className="login-separator hr-line">
                            <legend>OR</legend>
                        </fieldset>
                        <form className="wform" onSubmit={this.handleSubmit}>
                            {this.renderErrors()}
                            {extraInputs}
                            <input id="email"
                                type="text" 
                                value={this.state.email} 
                                onChange={this.update('email')}
                                placeholder="Email" />
                            <input id="password"
                                type="password" 
                                value={this.state.password} 
                                onChange={this.update('password')} 
                                placeholder="Password"/>
                            <button className="wbtn">{inputButtonText}</button>
                            <div className="sub-text-box">
                                <small className="subtle-text">
                                    {subText}
                                    {altLink}
                                </small>
                            </div>
                        </form>
                    </div>
                </div>
                <div className="img-container">
                    <img src={window.loginImageUrl}/>
                </div>
            </div>
        )
    }
}

export default SessionForm