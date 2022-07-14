export default class MarkerManager {
    constructor(map, clickable, handleClick) {
        this.map = map;
        this.clickable = clickable;
        this.handleClick = handleClick;
        this.markers = {};
    }

    updateMarkers(businesses) {
        const businessesObj = {}
        businesses.forEach((business) => businessesObj[business.id] = business);

        businesses.filter((business) => !this.markers[business.id])
            .forEach((business) => this.createMarker(business, this.handleClick))

        Object.keys(this.markers).filter((businessId) => !businessesObj[businessId])
            .forEach((businessId) => this.removeMarker(this.markers[businessId]))
    }

    createMarker(business) {
        const position = new google.maps.LatLng(business.lat, business.lng);
        const marker = new google.maps.Marker({
            position,
            map: this.map,
            businessId: business.id,
            clickable: this.clickable
        })

        marker.addListener('click', () => this.handleClick(business));
        this.markers[marker.businessId] = marker;
    }

    removeMarker(marker) {
        this.markers[marker.businessId].setMap(null);
        delete this.markers[marker.businessId];
    }
}

