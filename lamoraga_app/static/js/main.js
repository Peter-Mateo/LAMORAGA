var userAgent = navigator.userAgent || navigator.vendor || window.opera;
document.addEventListener("DOMContentLoaded", function() {
    var lazyloadDivs = document.querySelectorAll(".lazyload");
    // Intersection Observer options
    var options = {
        root: null,
        rootMargin: "0px",
        threshold: 0.1
    };
    function lazyload(div) {
        // Set the div's background-image to the data-src value
        div.style.backgroundImage = "url('" + div.dataset.src + "')";
        // Add the "loaded" class to display the fade-in effect
        div.classList.add("loaded");
    }
    // Create a new Intersection Observer
    var observer = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
        if (entry.isIntersecting) {
            lazyload(entry.target);
            // Unobserve the div to prevent loading it again
            observer.unobserve(entry.target);
        }
        });
    }, options);
    // Observe all the lazyload divs
    lazyloadDivs.forEach(function(div) {
    observer.observe(div);
});
});

if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
  // Show the Apple Maps link if the user is on an Apple device
    document.getElementById("apple-maps-link").href = "https://maps.apple.com/?address=3936+Tamiami+Trail+N,Naples,FL+34103";
    document.getElementById("apple-maps-link").style.display = "inline-block";
    document.getElementById("google-maps-link").style.display = "none";
    } else {
    // Show the Google Maps link if the user is on a non-Apple device
    document.getElementById("google-maps-link").href = "https://www.google.com/maps?q=3936+Tamiami+Trail+N,Naples,FL+34103";
    document.getElementById("google-maps-link").style.display = "inline-block";
    document.getElementById("apple-maps-link").style.display = "none";
}
$("#left").hover(function(){
    $(".dropdown").css("display", "block");
    $("#back").css("display", "block");
    $("ul.dropdown li").css("display", "block");
    }, function(){
    $(".dropdown").css("display", "none");
    $("#back").css("display", "none");
});
$("#right").hover(function(){
    $("#right").css("height", "200px");
    $(".book_table").css("position", "relative");
    $(".book_table").css("bottom", "-86px");
    $(".open_tble").css("display", "block");
});
$(document).mouseup(function(e){
    var container = $("#right, .book_table, .open_tble");
    if (!container.is(e.target) && container.has(e.target).length === 0) {
        $(".book_table").css("position", "initial");
        $(".open_tble").css("display", "none");
        $("#right").css("height", "fit-content");
    }
});
$("#tapa_btn").click(function(){
    $("#tapas").css("display", "block");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "none");
    $("#tapa_btn").addClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").removeClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active")
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
});
$("#soup_salad_btn").click(function(){
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "block");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "none");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").addClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").removeClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active")
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#entree_btn").click(function(){
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "block");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "none");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").addClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").removeClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active")
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#dessert_btn").click(function(){
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "none");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").removeClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active")
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#drinks_btn").click(function(){
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "block");
    $("#vegan").css("display", "none");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").addClass("active");
    $("#vegan_btn").removeClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active")
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#vegan_btn").click(function(){
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "block");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").addClass("active");
    $("#happyhour").css("display", "none");
    $("#happyhour_btn").removeClass("active");
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#happyhour_btn").click(function(){
    $("#happyhour").css("display", "block");
    $("#happyhour_btn").addClass("active")
    $("#tapas").css("display", "none");
    $("#soups_salad").css("display", "none");
    $("#entrees").css("display", "none");
    $("#drinks").css("display", "none");
    $("#vegan").css("display", "none");
    $("#tapa_btn").removeClass("active");
    $("#soup_salad_btn").removeClass("active");
    $("#entree_btn").removeClass("active");
    $("#drinks_btn").removeClass("active");
    $("#vegan_btn").removeClass("active");
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#cocktails_btn").click(function(){
    $("#cocktails").css("display", "block");
    $("#cocktails_btn").addClass("active");
    $("#wine_btg").css("display", "none");
    $("#happyhour").css("display", "none");
    $("#wine_btl").css("display", "none");
    $("#wine_btn").removeClass("active");
    $("#wine_btl_btn").removeClass("active");
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#wine_btn").click(function(){
    $("#wine_btg").css("display", "block");
    $("#wine_btn").addClass("active");
    $("#cocktails").css("display", "none");
    $("#wine_btl").css("display", "none");
    $("#cocktails_btn").removeClass("active");
    $("#wine_btl_btn").removeClass("active");
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#wine_btl_btn").click(function(){
    $("#wine_btl").css("display", "block");
    $("#wine_btl_btn").addClass("active");
    $("#cocktails").css("display", "none");
    $("#wine_btg").css("display", "none");
    $("#cocktails_btn").removeClass("active");
    $("#wine_btn").removeClass("active");
    $("#mobile_wine").removeClass("active");
    $("#mobile_wine_pdf").css("display", "none");
})
$("#mobile_wine").click(function(){
    $("#mobile_wine_pdf").css("display", "flex");
    $("#moible_wine").addClass("active");
    $("#cocktails").css("display", "none");
    $("#wine_btl").css("display", "none");
    $("#cocktails_btn").removeClass("active");
    $("#wine_btl_btn").removeClass("active");
    $("#wine_btn").removeClass("active");
})
$(document).click(function(e) {
    if (!$(e.target).closest('.mobile-nav-list, .mobile-nav-btn').length) {
        $('.mobile-nav-list').hide();
    }
});
$('.mobile-nav-btn').click(function(){
    $('.mobile-nav-list').toggle();
});
$(document).click(function(e) {
    if (!$(e.target).closest('.mbl-opn, .book_table').length) {
        $('.mbl-opn').hide();
    }
});
$('.book_table').click(function(){
    $('.mbl-opn').toggle();
});

const overlay = document.getElementById("overlay");
const centeredObject = document.getElementById("centeredObject");
const closeButton = document.getElementById("closeButton");

// Removes the overlay and Popup if overlay is clicked
overlay.addEventListener("click", () => {
    overlay.style.display = "none";
    centeredObject.style.display = "none";
});
// Removes the Popup if Close is clicked
closeButton.addEventListener("click", (event) => {
    event.stopPropagation(); // Prevent overlay click event from triggering
    overlay.style.display = "none";
    centeredObject.style.display = "none";
});