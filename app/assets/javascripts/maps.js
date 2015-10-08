
$(document).on('ready', function(){

  L.mapbox.accessToken = 'pk.eyJ1IjoiYWdyZWVuYmxvb20iLCJhIjoiMmIyMWUzZjc2OTE2Yjk3ODg2NDM1NGM3MDZiOWYxMzcifQ.VsF_nJF3v7yTmshY8MEcKQ';

  var map = L.mapbox.map('map-one', 'mapbox.streets')
    .setView([47.108,-86.561], 5);

  var svg = d3.select("map-one").append("svg").attr("width", w).attr("height", h);




//   function mapData(data) {

//   window.data = data;


//   $.ajax({
//     type: "GET",
//     dataType: "jsonp",
//     cache: true,
//     url: "https://represent.opennorth.ca/boundary-sets/federal-electoral-districts/?format=apibrowser",

//     success: function(data) {
//       data = data['data'];
//       mapData(data);
//     }
//   });
// }
});