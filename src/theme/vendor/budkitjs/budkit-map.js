/**
 * Created by livingstonefultang on 18/09/15.
 */

define(["jquery", "gmaps"], function( $, GMaps) {

    var gmap;

    //exports.bkmap = gmap;

    var mapStyles = [{
        "featureType": "landscape.man_made",
        "elementType": "geometry",
        "stylers": [{"color": "#f7f1df"}]
    }, {
        "featureType": "landscape.natural",
        "elementType": "geometry",
        "stylers": [{"color": "#d0e3b4"}]
    }, {
        "featureType": "landscape.natural.terrain",
        "elementType": "geometry",
        "stylers": [{"visibility": "off"}]
    }, {
        "featureType": "poi",
        "elementType": "labels",
        "stylers": [{"visibility": "off"}]
    }, {
        "featureType": "poi.business",
        "elementType": "all",
        "stylers": [{"visibility": "off"}]
    }, {
        "featureType": "poi.medical",
        "elementType": "geometry",
        "stylers": [{"color": "#fbd3da"}]
    }, {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [{"color": "#bde6ab"}]
    }, {
        "featureType": "road",
        "elementType": "geometry.stroke",
        "stylers": [{"visibility": "off"}]
    }, {
        "featureType": "road",
        "elementType": "labels",
        "stylers": [{"visibility": "on"}]
    }, {
        "featureType": "road.highway",
        "elementType": "geometry.fill",
        "stylers": [{"color": "#ffe15f"}]
    }, {
        "featureType": "road.highway",
        "elementType": "geometry.stroke",
        "stylers": [{"color": "#efd151"}]
    }, {
        "featureType": "road.arterial",
        "elementType": "geometry.fill",
        "stylers": [{"color": "#ffffff"}]
    }, {
        "featureType": "road.local",
        "elementType": "geometry.fill",
        "stylers": [{"color": "black"}]
    }, {
        "featureType": "transit.station.airport",
        "elementType": "geometry.fill",
        "stylers": [{"color": "#cfb2db"}]
    }, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#a2daf2"}]}]

    // jQuery code is in here
        //prettyPrint();
        gmap = new GMaps({
            //scrollwheel: false,
            navigationControl: false,
            mapTypeControl: false,
            //scaleControl: false,
            //draggable: false
            div: '#map',
            lat: 51.507351,
            lng: -0.127758
        });

        gmap.addStyle({
            styledMapName: "Styled Map",
            styles: mapStyles,
            mapTypeId: "map_style"
        });

        gmap.setStyle("map_style");

        GMaps.geolocate({
            success: function (position) {
                gmap.setCenter(position.coords.latitude, position.coords.longitude);
            },
            error: function (error) {
                //alert('Geolocation mtlfailed: '+error.message);
            },
            not_supported: function () {
                //alert("Your browser does not support geolocation");
            },
            always: function () {
                //alert("Done!");
            }
        });

        ////This will need to be loaded from a resource (json) file
        //var markers = [], objects = { hosts:[
        //    {lat: 51.507351, lng : -0.127758}
        //]};
        //
        ////Create a marker
        //for (var i = 0 ; i < objects.hosts.length; ++i){
        //    var marker = gmap.addMarker({
        //        lat : objects.hosts[i].lat,
        //        lng : objects.hosts[i].lng,
        //    });
        //    markers.push(marker);
        //}

    return gmap;
});