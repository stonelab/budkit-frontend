/**
 * Created by livingstonefultang on 19/12/2013.
 */

// Require JS Configuration
requirejs.config({
  "paths": {
    // "masonry": "vendor/masonry/masonry.pkgd.min",
    "jquery" : "vendor/jquery/dist/jquery.min",
    "jquery.ui" : "vendor/jquery-ui/jquery-ui.min",
    //"mes" : "vendor/mes/mediaelement-and-player.min",
    "autobahn" : "vendor/autobahnjs/autobahn.min",
    //"when": "vendor/when/when",
    "async" : 'vendor/requirejs-plugins/src/async',
    "dropzone" : 'vendor/dropzone/dist/dropzone-amd-module',
    "jquery.cookie" : "vendor/jquery.cookie/jquery.cookie",
    //"jquery.scrollbar" : "vendor/jquery/jquery.custom-scrollbar.min",
    "chosen" : "vendor/chosen/chosen.jquery.min",
    //"jquery.bridget": "vendor/bridget/jquery.bridget",
    "ghostdown": "vendor/ghostdown/ghostdown",
    //"jquery.ghostdown": "vendor/ghost/jquery.ghostdown",
    // "jquery.fullcalendar": "vendor/fullcalendar/fullcalendar",
    "bootstrap": "vendor/bootstrap/dist/js/bootstrap.min",
    "jquery.validation": "vendor/jquery-validation/dist/jquery.validate.min",
    "flat-ui": "vendor/flat-ui/dist/js/flat-ui.min",
    //"bootstrap.typeahead": "vendor/bootstrap/typeahead",
    //"bootstrap.typeahead.addresspicker": "vendor/bootstrap/typeahead-addresspicker",
    "typeahead":"vendor/typeahead.js/dist/typeahead.jquery.min",
    "typeahead.addresspicker":"vendor/typeahead-addresspicker/dist/typeahead-addresspicker.min",
    //"bootstrap.suppernote":'vendor/summernote/summernote.min',
    //"jquery.budkit": "vendor/budkit/budkit",
    //"jquery.validate": "vendor/validate/jquery.validate.min",
    //"budkit.uploader" : "vendor/budkit/budkit-uploader",
    //"budkit.chat" : "vendor/budkit/budkit-chat",

    "budkit.editor" : "vendor/budkitjs/budkit-editor",
    "budkit.fields" : "vendor/budkitjs/budkit-fields",
    "budkit.form" : "vendor/budkitjs/budkit-form",

    //"budkit.modal" : "vendor/budkit/budkit-modal",
    "budkit.map" : "vendor/budkitjs/budkit-map",
    "googlemaps" : 'vendor/googlemaps-amd/src/googlemaps',
    "gmaps" : "vendor/gmaps/gmaps.min",
    //"google.prettify":"//cdn.rawgit.com/google/code-prettify/master/loader/run_prettify",

    "html5shiv":"vendor/html5shiv/dist/html5shiv.min",
    "html5formshim":"vendor/html5formshim/build/jquery.html5form.min"
    //
    //"bootstrap.summernote.highlight":"vendor/summernote/summernote-ext-highlight"
  },
  shim: {
    'jquery': {
      exports: '$'
    },
    'jquery.ui' : ['jquery'],
    'ghostdown' : ['jquery','dropzone'],
    //'mes' : ['jquery'],
    'chosen':    ['jquery'],
    //"jquery.ghostdown": ['ghostdown', 'jquery', 'jquery.ui'],
    //'jquery.cookie': ['jquery'],
    //'jquery.bridget': ['jquery'],
    //'jquery.scrollbar': ['jquery'],
    //'jquery.fullcalendar': ['jquery'],
    'bootstrap': ['jquery'],
    'jquery.validation': ['jquery'],
    'flat-ui': ['jquery'],
    //'bootstrap.summernote': ['jquery'],
    "googlemaps":{
      deps:["async"]
    },
    "gmaps": {
      deps: ["jquery", "googlemaps"],
      exports: "GMaps"
    },
    //"autobahn": {
    //  deps: ["when"]
    //}
    "typeahead.addresspicker":{
      deps: ["jquery", "typeahead"],
      exports: "AddressPicker"
    },
    "html5formshim":["jquery"],

    ////'jquery.budkit': ['jquery'],
    ////'jquery.validate': ['jquery'],
    ////'budkit.uploader': ['jquery'],
    //'budkit.editor': ['jquery'],
    //"bootstrap.summernote.highlight": ['jquery']
    ////'budkit.modal': ['jquery'],
    ////'budkit.chat': ['jquery'],
    'budkit.fields': {
      deps: ['jquery', 'jquery.ui'],
      exports: "BKFields"
    },
    'budkit.form': {
      deps: ['jquery', 'jquery.ui'],
      exports: "BKForm"
    },
    'budkit.map': ['jquery']
  }
});