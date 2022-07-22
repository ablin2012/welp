import React from "react";
import { Link, withRouter } from "react-router-dom";

const KEYWORDS = {expensive: '$$$$', cheap: '$', affordable: '$$', sf: 'san francisco', 'san fran': 'san francisco', 'san francisco': 'san francisco', sd: 'san diego', 'san diego': 'san diego'}
class SearchBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.searchParams;
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.clearFilters();
        this.props.history.push('/search');
        let nameFilter;
        let locationFilter;
        if (this.state.name.toLowerCase() in KEYWORDS) {
            nameFilter = KEYWORDS[this.state.name.toLowerCase()];
        } else {
            nameFilter = this.state.name;
        }
        if (this.state.location.toLowerCase() in KEYWORDS) {
            locationFilter = KEYWORDS[this.state.location.toLowerCase()];
        } else {
            locationFilter = 'san francisco'
        }
        this.props.updateFilter('name', nameFilter);
        this.props.updateFilter('location', locationFilter)
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
                    <button className="wbtn"><i className="fas fa-search"></i></button>
                </form>
            </div>
        )
    }
}

export default withRouter(SearchBar);