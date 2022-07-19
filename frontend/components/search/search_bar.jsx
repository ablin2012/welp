import React from "react";
import { Link, withRouter } from "react-router-dom";

const CATEGORIES = ['']
class SearchBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.searchParams;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.history.push('/search');
        this.props.updateFilter('name', this.state.name);
    }

    update(field) {
        return e => {this.setState({[field]: e.target.value})}
    }
    render() {
        let {updateFilter} = this.props
        return(
            <div className="search-bar">
                <form onSubmit={this.handleSubmit} className="search-bar" >
                    <input className="search-input" 
                        type="text" 
                        value={this.state.name} 
                        onChange={this.update('name')} 
                        placeholder="landmarks, cheap, Chubby Noodle"/>
                    <input className="search-input" 
                        type="text" 
                        value={this.state.location} 
                        onChange={this.update('location')} 
                        placeholder="SF, San Francisco"/>
                    {/* <Link to='/search'><button className="wbtn">Search</button></Link> */}
                    <button className="wbtn"><i className="fas fa-search"></i></button>
                </form>
            </div>
        )
    }
}

export default withRouter(SearchBar);