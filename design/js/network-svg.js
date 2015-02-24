// network-image.js

var snapsvg_network = Snap("#main-svg");
var snappaths_network = new Array(), lines = new Array(), circles = new Array();
var mouseX, mouseY;
var last_mx, last_my;
var window_width = window.innerWidth;
var small_circle;


/* initialize */


if (window_width < 800) {
	snapsvg_network.selectAll('circle').attr({strokeWidth: 7.0});
	snapsvg_network.selectAll('line').attr({strokeWidth: 7.0});
} else if (window_width < 1000) {
	snapsvg_network.selectAll('circle').attr({strokeWidth: 6.0});
	snapsvg_network.selectAll('line').attr({strokeWidth: 6.0});
}

/* function */
function animation() {
	var random;
	var move_x = 0, move_y = 0;

	var circle_bounce = setInterval(function() {
		snapsvg_network.selectAll('circle').forEach(function(element, i) {
			element.animate({r: 20}, 500, mina.bounce);
		});
		clearInterval(circle_bounce);

		small_circle = snapsvg_network.circle(-50, -50, 8).attr({fill:'#33f'});
		setInterval(function() {
			random = Math.floor(Math.random() * (snapsvg_network.selectAll('circle').length - 1) );
			var element = snapsvg_network.selectAll('circle')[random];
			var x = element.node.cx.animVal.value;
			var y = element.node.cy.animVal.value;

			small_circle.animate({cx: x, cy: y}, 1000, mina.easeinout);
		}, 5000);

	}, 1300);
}

function onMouseMove(event) {
	event.preventDefault();
	mouseX = event.clientX;
	mouseY = event.clientY;

	if (last_mx == null && last_my == null) {
		last_mx = mouseX;
		last_my = mouseY;
	}

	var move_x = mouseX - last_mx;
	var move_y = mouseY - last_my;

	snapsvg_network.selectAll('circle').forEach(function(element, i) {
	});

	last_mx = mouseX;
	last_my = mouseY;
}

function onMouseOver() {
	snapsvg_network.selectAll('circle').forEach(function(element, i) {
		element.mouseover(function() {
			element.animate({r: 30}, 500, mina.bounce);
		});
	});
}


/* execute */

animation();
// document.addEventListener('mousemove', onMouseMove, false);
// onMouseOver();


/* sample
discs.attr({
	stroke: '#dfdfdf',
	strokeWidth: 4.0,
	strokeDashoffset: 3000,
	strokeDasharray: 3000,
	fill: 'none'
});
*/