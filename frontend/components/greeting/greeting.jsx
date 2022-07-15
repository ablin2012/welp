import React from "react";
import { Link } from "react-router-dom";

class Greeting extends React.Component {
    render(){
        let {currentUser, logout} = this.props;
        const display = currentUser ? (
            <div>
                <p>Welcome, {currentUser.firstName}!</p>
                <button className="wbtn" onClick={logout}>Logout</button>
            </div>
        ) : (
            <div className="login-buttons">
                <Link className="wbtn" to="/signup">Sign Up</Link>
                <Link className="wbtn" to="/login">Log In</Link>
            </div>
        )
        return (
            <div>
                {display}
            </div>
        )
    }
}

export default Greeting;