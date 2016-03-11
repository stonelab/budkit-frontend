<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">

    <div class="container-iside">
        <div class="stream-map-tools">
            <tpl:import name="/posts/post-map-tools" />
        </div>
        <div id="map" class="container-block no-scroll"></div>
        <script>
            //<![CDATA[
            require(['config'], function () {
                require.config({
                    googlemaps: {
                        params: {
                            key: 'AIzaSyBZrzwMucdDb547ZrUkWrhkIChoNJfAC88',
                            libraries: 'places'
                        }
                    }
                });
                require(['domReady!', 'gmaps','typeahead.addresspicker','budkit.map'], function(domReady, GMaps, AddressPicker, gmap) {

                    //Markers


                        //domReady(function(gmap) {

                            console.log(gmap);

                            var addressPicker = new AddressPicker({ placeDetails: true });
                            addressPicker.bindDefaultTypeaheadEvent($('[data-autocomplete="true"]'));

                            $('[data-autocomplete="true"]').typeahead(null, {
                                displayKey: 'description',
                                source: addressPicker.ttAdapter()
                            }).on('typeahead:selected', function(event, result) {
                                //var latTarget = $(this).data('lat-target'), lngTarget = $(this).data('lng-target');
                                GMaps.geocode({
                                    placeId: result.place_id ,
                                    callback: function(results, status) {
                                        if (status == 'OK') {

                                            var latlng = results[0].geometry.location;

                                            gmap.setCenter(latlng.lat(), latlng.lng());
                                            gmap.removeMarkers(); //remove all previous markers
//
                                            var southWest = gmap.map.getBounds().getSouthWest(); // Los Angeles, CA
                                            var northEast = gmap.map.getBounds().getNorthEast(); // New York, NY
                                            var lngSpan = northEast.lng() - southWest.lng();
                                            var latSpan = northEast.lat() - southWest.lat();
                                            var icons = ["red-spot.png","blue-spot.png","green-spot.png","yellow-spot.png","black-spot.png"];

                                            for(var i = 1; i < 30; i++) {
                                                gmap.addMarkers([
                                                    {
                                                        lat: southWest.lat() + latSpan * Math.random(),
                                                        lng: southWest.lng() + lngSpan * Math.random(),
                                                        title: 'Lima',
                                                        icon: '/theme/assets/img/markers/'+icons[Math.floor(Math.random()*icons.length)],
                                                        click: function (e) {
                                                            console.log(e);
                                                            gmap.setCenter(e.position.lat(), e.position.lng());
                                                            gmap.removeOverlays();
                                                            gmap.drawOverlay({
                                                                lat: e.position.lat(),
                                                                lng: e.position.lng(),
                                                                verticalAlign: "top",
                                                                layer: "floatPane",
                                                                verticalOffset: -13,
                                                                horizontalAlign: "center",
                                                                content: '<div class="map-overlay">...</div>'
                                                            });
                                                        }
                                                    }
                                                ]);
                                            }
                                        }
                                    }
                                });
                            });

                            $( window ).resize(function() {
                                $("#map").css("height", "100%");
                                gmap.refresh();
                            });
                        //});

                });
            });
            //]]>
        </script>
    </div>


    <div class="container-main" role="main">

        <div class="container-block stream-list-content background-white">


            <tpl:condition on="filter" test="empty" is="0">
                <div class="stream-list-title">
                    <i tpl:class="ionicon mrs ion-pound color-${filter}" />
                    <span tpl:class=" color-${filter}"><tpl:data value="filter" /></span>
                </div>
            </tpl:condition>
            <div class="stream-list-tabs">
                <tpl:menu uid="mediamenu" class="nav nav-tabs" />
            </div>
            <div class="stream-list-editor">
                <tpl:import name="/posts/post-editor" />
            </div>
            <div class="stream-detailed">
                <tpl:import name="stream" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //<![CDATA[
//        require(['config'], function () {
//            require(['jquery'], function() {
//                var d = $('.container-block.stream-list-content');
//                d.scrollTop(d.prop("scrollHeight"));
//            })
//        });
        //]]>
    </script>
</tpl:layout>

