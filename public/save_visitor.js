/**
 * Created by ashimpi on 2/26/16.
 */
function save_visitor() {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "http://www.hiatul.com/visitors/create", false);
    xhttp.send();
}


var curContent = "work";
var lastLi = $('div#menu-bar ul li:first');
$("#" + curContent).show();

//$('div#menu-bar ul li:first').addClass('activeLink');
lastLi.addClass('activeLink');

$(function() {
    $("#menu-bar ul li a").click(function() {
        if (curContent.length) {
            lastLi.removeClass('activeLink');
           $("#" + curContent).hide();
         }
        curContent = $(this).data("content");
        lastLi = $(this).closest('li');
        lastLi.addClass('activeLink');
        $("#" + curContent).show();
    });
});