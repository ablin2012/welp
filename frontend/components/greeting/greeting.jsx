import React from "react";
import { Link } from "react-router-dom";

class Greeting extends React.Component {
    render(){
        let {currentUser, logout} = this.props;
        const display = currentUser ? (
            <div className="login-buttons">
                <small>Welcome, {currentUser.firstName}!</small>
                <button className="wbtn" onClick={logout}>Logout</button>
            </div>
        ) : (
            <div className="login-buttons">
                <Link to="/signup"><button className="wbtn">Sign Up</button></Link>
                <Link to="/login"><button className="wbtn">Log In</button></Link>
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