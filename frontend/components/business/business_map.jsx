import React from "react";
import { withRouter } from "react-router-dom";
import MarkerManager from "../../util/marker_manager";

const mapOptions = {
    center: { lat: 37.7758, lng: -122.435 },
    zoom: 13
};

class BusinessMap extends React.Component {
    componentDidMount() {
        this.map = new google.maps.Map(this.mapNode, mapOptions);
        this.MarkerManager = new MarkerManager(this.map, this.handleMarkerClick.bind(this));
        this.MarkerManager.updateMarkers(this.props.businesses);
        this.registerListeners();
    }

    componentDidUpdate() {
        this.MarkerManager.updateMarkers(this.props.businesses);
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
        return (
            <div id="map-container" ref={ map => this.mapNode = map}></div>
        );
    }
}

export default withRouter(BusinessMap);