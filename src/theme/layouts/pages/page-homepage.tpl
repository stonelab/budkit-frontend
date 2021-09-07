<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="page" extends="index" xmlns:tpl="http://budkit.org/tpl">
    <!--Remove-->
    <tpl:remove path="//div[@role='side']"/>
    <tpl:remove path="//div[@role='aside']"/>

    <tpl:replace path="//div[@role='main']">
        <div class="container-main">
                <div class="container-navigation float">
                    <tpl:import name="navigation" />
                </div>
                <div class="container-block scroll">
                    <div class="map-hero">
                        <div id="map" class="container-block"></div>
                        <div class="hero">
                            <div class="unit">
                                <div class="container">
                                <h1>Barter Everything</h1>
                                <p class="highlight">A platform for the free* exchange of goods and services.</p>
                                <form class="mtl mbl row">
                                    <div class="form-group col-md-4 prn">
                                        <label class="sr-only" for="exampleInputEmail3">Email address</label>
                                        <input type="text" class="form-control"  placeholder="What do you need?" />
                                    </div>
                                    <div class="form-group col-md-4 prn pln">
                                        <label class="sr-only" for="exampleInputEmail3">Email address</label>
                                        <input type="text" class="form-control"  placeholder="Where do you need it" />
                                    </div>
                                    <div class="form-group col-md-4 pln">
                                        <label class="sr-only" for="exampleInputPassword3">Password</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="exampleInputPassword3" placeholder="When do you need it?" />
                                            <span class="input-group-btn">
                                                <button type="submit" class="btn btn-danger btn-lg">Request</button>
                                            </span>
                                        </div>
                                    </div>
                                </form>


                                    <div class="position-bottom mtl mbl">
                                        <span class="icon-scroll"></span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <section>
                        <div class="container marketing mtl">
                            <div class="testimonial">
                                <h3 class="color-alizarin">OUR MISSION</h3>
                                <blockquote>
                                    <tpl:data value="config://extras.rwuk.homepage-about-us-summary" default="Praesent id suscipit mauris. Phasellus id venenatis ex. Nunc pretium, libero in fermentum ornare, dui orci porttitor ante, sodales faucibus ligula metus a neque. Praesent mauris nulla, congue."/>
                                </blockquote>
                                <p class="author"><a tpl:href="/page/${config://extras.rwuk.homepage-about-us}">Find out more...</a></p>
                            </div>
                        </div>
                    </section>
                    <hr class="featurette-divider" />

                    <section>
                        <div class="container marketing mtl">
                            <div class="page-header text-center">
                                <h1>Our Exchanges</h1>
                                <p>You can now exchange goods &amp; services in these categories</p>
                            </div>
                            <div class="row featurette">
                                <div class="col-md-1"><i class="ionicons icon featurette-icon ion-ionic container-round background-peter-river color-white"></i></div>
                                <div class="col-md-5">
                                    <h3 class="featurette-heading">Accommodation</h3>
                                    <p class="lead">Find a spare bedroom or swap a complete house.</p>

                                </div>
                                <div class="col-md-1"><i class="ionicons icon featurette-icon ion-ios-location-outline  container-round background-alizarin color-white"></i></div>
                                <div class="col-md-5">
                                    <h3 class="featurette-heading">Transport</h3>
                                    <p class="lead">From couchsurfing, to lodging Find spare bedroom or swap a complete house.</p>
                                </div>
                            </div>
                            <div class="row featurette">
                                <div class="col-md-1"><i class="ionicons icon ion-alert mtl ion-ios-medical-outline"></i></div>
                                <div class="col-md-5">
                                    <h2 class="featurette-heading">Help first. Politics later</h2>
                                    <p class="lead">Are you unhappy with the current narrative on the refugee crisis and the lack of government engagement with the issue? Join us in helping refugees who have made it to Britain settle in a free room in yours or a neighbours available shared flat?</p>

                                </div>
                                <div class="col-md-1"><i class="ionicons icon ion-alert mtl ion-ios-medical-outline"></i></div>
                                <div class="col-md-5">
                                    <h2 class="featurette-heading">No Stigma or Prejudice</h2>
                                    <p class="lead">We are convinced that refugees should not be stigmatized and excluded by being housed in mass accommodations. Instead, we should offer them a warm welcome. We believe we can establish a more humane culture of welcoming refugees</p>

                                </div>
                            </div>
                        </div>

                    </section>

                    <tpl:import name="foot"/>

                </div>

        </div>


        <script data-main="/theme/assets/js/main">
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

                    $( window ).resize(function() {
                        $("#map").css("height", "100%");
                        gmap.refresh();
                    });
                    //});

                });
            });
            //]]>
        </script>
    </tpl:replace>
</tpl:layout>

