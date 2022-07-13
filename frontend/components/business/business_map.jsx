import React from "react";
import { withRouter } from "react-router-dom";
import MarkerManager from "../../util/marker_manager";



class BusinessMap extends React.Component {
    componentDidMount() {
        // this.props.fetchAllBusinesses();
        const mapOptions = {
            center: { lat: 37.7758, lng: -122.435 },
            // center: {lat: parseFloat(this.props.businesses[0].lat), lng: parseFloat(this.props.businesses[0].lng)},
            zoom: 13
        };
        this.map = new google.maps.Map(this.mapNode, mapOptions);
        this.MarkerManager = new MarkerManager(this.map, this.handleMarkerClick.bind(this));
        if (this.props.singleBusiness) {
            this.props.fetchBusiness(this.props.businessId);
        } else {
            this.registerListeners();
        }
        this.MarkerManager.updateMarkers(this.props.businesses);
    }

    componentDidUpdate() {
        // if (this.props.singleBusiness) {
        //     const targetBusinessKey = Object.keys(this.props.businesses)[0];
        //     const targetBusiness = this.props.businesses[targetBusinessKey];
        //     this.MarkerManager.updateMarkers([targetBusiness]); //grabs only that one business
        //   } else {
            this.MarkerManager.updateMarkers(this.props.businesses);
          // }
    }

    registerListeners() {
        google.maps.event.addListener(this.map, 'idle', () => {
          const { north, south, east, west } = this.map.getBounds().toJSON();
          const bounds = {
            northEast: { lat: north, lng: east },
            southWest: { lat: south, lng: west } };
          this.props.updateFilter('bounds', bounds);
        });
    }

    handleMarkerClick(business) {
        this.props.history.push(`businesses/${business.id}`);
    }

    render() {
        let {mapType} = this.props;
        return (
            <div id={mapType} ref={ map => this.mapNode = map}></div>
        );
    }
}

export default withRouter(BusinessMap);