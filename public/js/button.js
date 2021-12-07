$(document).ready(function() {
    for (let i = 0; i < sessionStorage.length; i++) {
        let key = sessionStorage.key(i);
        $(key).attr("disabled", true);
    }

    //$(disbledBtn).attr("disabled", true); // set the attribute by the id

    $(".like-button").click(function() {
        var id = $(this).attr('id');
        $('#' + id).attr("disabled", true);
        sessionStorage.setItem('#' + id, "disabled");
    });
});