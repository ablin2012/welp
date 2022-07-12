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
            extraInputs = null;

        if (formType === 'signup') {
            formHeader = 'Sign Up for Welp';
            altLink = (<Link to='/login'>Login</Link>);
            inputButtonText = 'Sign Up';
            subText = 'Already on Welp? ';
            extraInputs = (
                <>
                    <input id="first_name"
                        type="text" 
                        value={this.state.first_name} 
                        onChange={this.update('first_name')}
                        placeholder="First Name" /> 
                    <input id="last_name"
                        type="text" 
                        value={this.state.last_name} 
                        onChange={this.update('last_name')} 
                        placeholder="Last Name"/>
                </>
            )
        } else {
            formHeader = 'Log In to Welp';
            altLink = <Link to='/signup'>Signup</Link>;
            inputButtonText = 'Log In';
            subText = 'New to Welp? ';
        }
        return (
            <div className="column">
                <div className="signup-form-container">
                    <h2>{formHeader}</h2>
                    <button className="wbtn" 
                        onClick={this.loginGuest}>
                            Login as Guest
                    </button>
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
        )
    }
}

export default SessionForm