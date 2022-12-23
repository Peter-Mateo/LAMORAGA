window.onload = function() {
    if(document.getElementById("r1")!= null && typeof document.getElementById("r1") != "undefined"){
        if(document.getElementById("r1").checked = true){
            document.getElementById("re1").classList.add("active");
        }
    }
}
function re1(){
    if(document.getElementById("r1").checked = true){
        document.getElementById("re1").classList.add("active");
        document.getElementById("re2").classList.remove("active");
        document.getElementById("re3").classList.remove("active");
        document.getElementById("re4").classList.remove("active");
        return true;
    }
}
function re2(){
    if(document.getElementById('r2').checked = true) {
        document.getElementById("re2").classList.add("active");
        document.getElementById("re1").classList.remove("active");
        document.getElementById("re3").classList.remove("active");
        document.getElementById("re4").classList.remove("active");
        return true;
    }
}
function re3(){
    if(document.getElementById('r3').checked = true) {
        document.getElementById("re3").classList.add("active");
        document.getElementById("re1").classList.remove("active");
        document.getElementById("re2").classList.remove("active");
        document.getElementById("re4").classList.remove("active");
        return true;
    }
}
function re4(){
    if(document.getElementById('r4').checked = true) {
        document.getElementById("re4").classList.add("active");
        document.getElementById("re1").classList.remove("active");
        document.getElementById("re2").classList.remove("active");
        document.getElementById("re3").classList.remove("active");
        return true;
    }
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
    }, function(){
    $(".book_table").css("position", "initial");
    $(".open_tble").css("display", "none");
    $("#right").css("height", "fit-content");
})
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
    $("#happyhour_btn").removeClass("active")
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
})
$("#cocktails_btn").click(function(){
    $("#cocktails").css("display", "block");
    $("#cocktails_btn").addClass("active");
    $("#wine_btg").css("display", "none");
    $("#happyhour").css("display", "none");
    $("#wine_btl").css("display", "none");
    $("#wine_btn").removeClass("active");
    $("#wine_btl_btn").removeClass("active");
})
$("#wine_btn").click(function(){
    $("#wine_btg").css("display", "block");
    $("#wine_btn").addClass("active");
    $("#cocktails").css("display", "none");
    $("#wine_btl").css("display", "none");
    $("#cocktails_btn").removeClass("active");
    $("#wine_btl_btn").removeClass("active");
})
$("#wine_btl_btn").click(function(){
    $("#wine_btl").css("display", "block");
    $("#wine_btl_btn").addClass("active");
    $("#cocktails").css("display", "none");
    $("#wine_btg").css("display", "none");
    $("#cocktails_btn").removeClass("active");
    $("#wine_btn").removeClass("active");
})