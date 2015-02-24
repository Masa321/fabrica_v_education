//map.js

$(document).ready(function() {
	resizeMap();
	$(window).on('resize', function() {
		resizeMap();
	});
});

var map;
var mapStyle = [
	{"featureType":"water","elementType":"geometry","stylers":[{"color":"#B8D5FF"}]},
	{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1df"}]},
	{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e3b4"}]},
	{"featureType":"landscape.natural.terrain","elementType":"geometry","stylers":[{"visibility":"on"}]},
	{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ab"}]},
	{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"on"}]},
	{"featureType":"poi.medical","elementType":"geometry","stylers":[{"color":"#fbd3da"}]},
	{"featureType":"poi.business","stylers":[{"visibility":"on"}]},
	{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},
	{"featureType":"road","elementType":"labels","stylers":[{"visibility":"on"}]},
	{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffe15f"}]},
	{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#efd151"}]},
	{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},
	{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"black"}]},
	{"featureType":"transit.station.airport","elementType":"geometry.fill","stylers":[{"color":"#cfb2db"}]}
];

function initialize() {
	var latlng = new google.maps.LatLng(35.655607, 139.693790);

    var mapOptions = {
        zoom: 15,
        scrollwheel: false,
        styles: mapStyle,
        center: latlng
    };

    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    var marker = new google.maps.Marker({position: latlng, map: map, title: ''});
}

function resizeMap() {
	var target = $('#map-canvas');
	var twidth = target.width();
	var theight;
	if (window.innerWidth < 650) {
		theight = twidth;
	} else {
		theight = twidth / 2;
	}
	target.css({'height':theight + 'px'});
}

google.maps.event.addDomListener(window, 'load', initialize);