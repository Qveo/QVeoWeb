$(document).ready(function(){
    $('.scrollspy').scrollSpy();
    $('.datepicker').datepicker({
        autoClose: true,
        format: 'dd/mm/yyyy',
        defaultDate: new Date(),
        firstDay: 1,
        i18n: {
            months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
            monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Set", "Oct", "Nov", "Dic"],
            weekdays: ["Domingo","Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
            weekdaysShort: ["Dom","Lun", "Mar", "Mie", "Jue", "Vie", "Sab"],
            weekdaysAbbrev: ["D","L", "M", "M", "J", "V", "S"]
        }
    });

    $(document).on("click", ".img-plataforma", changePlataformaSeleccionada);

    deleteSpringFormUnusedTags();

    markPlataformasSeleccionadas();

});

function markPlataformasSeleccionadas() {
    $('#plataformas').find("input[type='checkbox']").each(function () {
        if(!$(this).prop("checked")){
            $(this).parent().find(".img-plataforma").addClass("plataforma-selected");
        }
        if($(this).prop("checked")){
            $(this).parent().find(".img-plataforma").removeClass("plataforma-selected");
        }
    });
}

function deleteSpringFormUnusedTags() {
    $('.check-label > input[type="hidden"]').remove();
}

function changePlataformaSeleccionada(event) {
    var check = $(event.target).parent().parent().find("input[type='checkbox']");
    if(check.prop("checked")){
        $(event.target).addClass("plataforma-selected");
    } else {
        $(event.target).removeClass("plataforma-selected");
    }
}
