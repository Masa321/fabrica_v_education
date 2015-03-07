//sub-image.js

var snapsvg_menubar = Snap("#menubar-svg");

/* function */
function animation() {
    // var random;
    // var move_x = 0, move_y = 0;

    // setInterval(function() {
    // }, 5000);
}

function menubar() {
    var open = true;
    $('#menubar').on('click', function() {
        snapsvg_menubar.selectAll('line').forEach(function(element, i) {
            if (open) {
                switch (i) {
                    case 0:
                        element.animate({y2: 133}, 250, mina.easeinout);
                        break;
                    case 1:
                        element.animate({x2: 15}, 200, mina.easeinout);
                        break;
                    case 2:
                        element.animate({y2: 16}, 250, mina.easeinout);
                        break;
                    default:
                        break;
                }
            } else {
                switch (i) {
                    case 0:
                        element.animate({y2: 16}, 200, mina.easeinout);
                        break;
                    case 1:
                        element.animate({x2: 185}, 250, mina.easeinout);
                        break;
                    case 2:
                        element.animate({y2: 133}, 200, mina.easeinout);
                        break;
                    default:
                        break;
                }
            }
        });

        if (open) {
            $('.global_link_compact .link-item').animate({
                'height': '38px',
                'paddingTop': '15px',
                'paddingBottom': '15px',
                'borderWidth': '1px',
                'opacity': 1.0,
            }, 250);

            $('#global_link').animate({
                backgroundColor: 'rgba(255,255,255,0.9)'
            }, 250);
        } else {
            $('.global_link_compact .link-item').animate({
                'height': '0px',
                'paddingTop': '0px',
                'paddingBottom': '0px',
                'borderWidth': '0px',
                'opacity': 0.0
            }, 250);

            $('#global_link').animate({
                backgroundColor: 'rgba(255,255,255,0.0)'
            }, 250);
        }

        open = !open;
    });
}

/* execute */
animation();
menubar();