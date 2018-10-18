function getAdresse() {
    var code = document.getElementById("code").value;
    $.get("index.php?do=eleve&action=getAdresse",
        {code:code},
        function (data) {
            $("#adresse").val(data['adresse']);
        },
        'json'
    );
}

function setLeconDo(numero) {
    $.get("index.php?do=lecon&action=fait", {num:numero}, function () {
        location.reload();
    });
}