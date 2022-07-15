import React from "react";
import { withRouter } from "react-router-dom";

class SearchBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.searchParams;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        console.log('working');
        this.props.history.push('/search');
    }

    update(field) {
        return e => {this.setState({[field]: e.target.value})}
    }
    render() {
        return(
            <div>
                <form onSubmit={this.handleSubmit} >
                    <input type="text" value={this.state.name} onChange={this.update('name')} />
                    <input type="text" value={this.state.location} onChange={this.update('location')} />
                    <button className="wbtn">Search</button>
                </form>
            </div>
        )
    }
}

export default withRouter(SearchBar);