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
        }
        this.handleSubmit = this.handleSubmit.bind(this);
    } 

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value})
    }

    render(){
        let {firstName, lastName, email, password} = this.state;
        let {formType, errors} = this.props;
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
                        <input type="text" value={firstName} onChange={this.update('firstName')} />
                    </label>
                    <label> Last Name: 
                        <input type="text" value={lastName} onChange={this.update('lastName')} />
                    </label>
                </>
            )
        } else {
            formHeader = 'Log In to Welp';
            altLink = <Link to='/signup'>Signup</Link>;
            inputButtonText = 'Log In'
        }

        const errorList = errors ? (
            <ul>
                {errors.map((error) => {
                    return (<li>{error}</li>)
                })}
            </ul>
        ) : null

        return (
            <form onSubmit={this.handleSubmit}>
                {errorList}
                <h1>{formTitle}</h1>
                {extraInputs}
                <label>Email:
                    <input type="text" value={email} onChange={this.update('email')} />
                </label>
                <label>Password:
                    <input type="password" value={password} onChange={this.update('password')} />
                </label>
                <input type="submit" value={inputButtonText} />
            </form>
        )
    }
}

export default SessionForm