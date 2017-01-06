// This script shades the current page link.
var navID = "#"+location.pathname.replace("/", "").replace(".php", "")
if (navID == "#") {navID = "#home";}
$(document).ready(function() {
	$(navID).css("background-color", navbarCurrentPageBgColor);
});

// This script sets the footer.
$(document).ready(function() {
	$("footer").html(footer);
});
