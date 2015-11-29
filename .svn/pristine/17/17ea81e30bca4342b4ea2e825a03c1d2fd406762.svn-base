$(document).ready(function() {

    function update() {
        $.ajax({
            type: 'POST',
            url: '../views/datetime.php',
            timeout: 1000,
            success: function(data) {
                $("#date").html(data);
                window.setTimeout(update, 1000);
            },
        });
    }

    update();

});