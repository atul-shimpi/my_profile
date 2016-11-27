/**
 * Created by ashimpi on 2/26/16.
 */
function save_visitor() {
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", "http://www.hiatul.com/visitors/create", false);
    xhttp.send();
}


var curContent = "work";
$("#" + curContent).show();
$("#" + curContent).closest('li').addClass('activeLink');

$(function() {
    $("#menu-bar ul li a").click(function() {
        if (curContent.length) {
         $("#" + curContent).hide();
         }
        curContent = $(this).data("content");
        $("#" + curContent).closest('li').addClass('activeLink');
        $(this).closest('li').addClass('activeLink');
         $("#" + curContent).show();
    });
});