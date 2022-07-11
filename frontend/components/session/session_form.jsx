import React from "react";
import { Link } from "react-router-dom";

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            firstName: '',
            lastName: '',
            email: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    } 

    componentDidMount() {
        this.props.clearSessionErrors();
    }

    handleSubmit(e) {
        console.log(this.state);
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
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
            extraInputs = null;

        if (formType === 'signup') {
            formHeader = 'Sign Up for Welp';
            altLink = (<Link to='/login'>Login</Link>);
            inputButtonText = 'Sign Up';
            extraInputs = (
                <>
                    <label> First Name: 
                        <input type="text" value={this.state.firstName} onChange={this.update('firstName')} />
                    </label>
                    <label> Last Name: 
                        <input type="text" value={this.state.lastName} onChange={this.update('lastName')} />
                    </label>
                </>
            )
        } else {
            formHeader = 'Log In to Welp';
            altLink = <Link to='/signup'>Signup</Link>;
            inputButtonText = 'Log In'
        }
        // debugger;
        return (
            <form onSubmit={this.handleSubmit}>
                <h1>{formHeader}</h1>
                {this.renderErrors()}
                {extraInputs}
                <label>Email:
                    <input type="text" value={this.state.email} onChange={this.update('email')} />
                </label>
                <label>Password:
                    <input type="password" value={this.state.password} onChange={this.update('password')} />
                </label>
                <input type="submit" value={inputButtonText} />
                {altLink}
            </form>
        )
    }
}

export default SessionForm