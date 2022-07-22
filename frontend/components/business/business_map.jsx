import React from "react";
import { withRouter } from "react-router-dom";
import MarkerManager from "../../util/marker_manager";



class BusinessMap extends React.Component {
    componentDidMount() {
        let clickable = true;
        const mapOptions = (this.props.centerLat) ? (
            {center: { lat: parseFloat(this.props.centerLat), lng: parseFloat(this.props.centerLng)},
            zoom: 15}
            ) : (
            {center: { lat: 37.7758, lng: -122.435 },
            zoom: 13}
        );

        this.map = new google.maps.Map(this.mapNode, mapOptions);
        if (this.props.singleBusiness) {
            this.props.fetchBusiness(this.props.businessId);
            clickable = false;
        } else {
            this.registerListeners();
        }
        this.MarkerManager = new MarkerManager(this.map, clickable, this.handleMarkerClick.bind(this));
        this.MarkerManager.updateMarkers(this.props.businesses);
    }

    componentDidUpdate(prevProps) {
        // if (prevProps.businesses.length === 0) {
            this.MarkerManager.updateMarkers(this.props.businesses);
        // }
    }

    registerListeners() {
        google.maps.event.addListenerOnce(this.map, 'idle', () => {
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