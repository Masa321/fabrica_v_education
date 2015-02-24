// main-image.js

var snapsvg_main = Snap("#main-svg");
var snappaths_main = new Array();
var blue = '#33f';
var black = '#333';

/* settings */
snapsvg_main.selectAll('path').attr({
    stroke: black,
    fill: '#fff',
    strokeWidth: 0.5,
    strokeDasharray: 3000,
    strokeDashoffset: 3000
});

/* function */
function animation() {
    var random, randomArray = new Array();
    var move_x = 0, move_y = 0;
    var path_length = snapsvg_main.selectAll('path').length;

    var load_company_name = setInterval(function() {
        snapsvg_main.selectAll('path').forEach(function(element, i) {
            element.animate({strokeDashoffset: 0}, 3000, mina.easeinout, function() {
                this.animate({fill: black}, 1000, mina.easeinout);
            });
        });
        clearInterval(load_company_name);
    }, 400);

    setInterval(function() {
        random = Math.floor( Math.random()*(path_length - 1) );
        for (var i = 0; i < random; i++) {
            randomArray.push(Math.floor( Math.random()*(path_length - 1) ));
        }
        snapsvg_main.selectAll('path').forEach(function(element, i) {
            if (randomArray.indexOf(i) >= 0) {
                element.animate({fill: blue}, 3000, mina.easeinout);
            } else {
                element.animate({fill: black}, 3000, mina.easeinout);
            }
        });
        randomArray = [];
    }, 5000);
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

    // snapsvg.selectAll('path').forEach(function(element, i) {
    // });

    last_mx = mouseX;
    last_my = mouseY;
}

function onMouseOver() {
    snapsvg_main.selectAll('path').forEach(function(element, i) {
        element.mouseover(function() {
        });
        element.mouseout(function() {
        });
    });
}


/* execute */

animation();
// document.addEventListener('mousemove', onMouseMove, false);
// onMouseOver();