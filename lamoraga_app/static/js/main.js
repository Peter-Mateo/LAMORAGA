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