
$(document).on('ready', function(){

  L.mapbox.accessToken = 'pk.eyJ1IjoiYWdyZWVuYmxvb20iLCJhIjoiMmIyMWUzZjc2OTE2Yjk3ODg2NDM1NGM3MDZiOWYxMzcifQ.VsF_nJF3v7yTmshY8MEcKQ';

  var map = L.mapbox.map('map-one', 'mapbox.streets')
    .setView([47.108,-86.561], 5);

})