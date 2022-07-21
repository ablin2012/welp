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
            .forEach((business, idx) => this.createMarker(business, idx, this.handleClick))

        Object.keys(this.markers).filter((businessId) => !businessesObj[businessId])
            .forEach((businessId) => this.removeMarker(this.markers[businessId]))
    }

    createMarker(business, idx) {
        const position = new google.maps.LatLng(business.lat, business.lng);
        const imgIcon = {
            url: business.photoUrls[0],
            scaledSize: new google.maps.Size(75,75),
        }
        const marker = new google.maps.Marker({
            position,
            map: this.map,
            businessId: business.id,
            clickable: this.clickable,
            label: {text: (idx + 1).toString(), color: 'white'}
        })

        marker.addListener('click', () => this.handleClick(business));
        marker.addListener('mouseover', function(event) {
            this.setIcon(imgIcon);
        });
        marker.addListener('mouseout', function(event) {
            this.setIcon(null);
        });
        this.markers[marker.businessId] = marker;
    }

    removeMarker(marker) {
        this.markers[marker.businessId].setMap(null);
        delete this.markers[marker.businessId];
    }
}

