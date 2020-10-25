function cambiarColor() {

    
    var total = $('#total-region').find('.t-BadgeList-value').text().slice(1).replace(",","");
    var detalle = $('.a-IRR-aggregate-value').eq(1).text().slice(1).replace(",","");
    var resultado = parseFloat(total) - parseFloat(detalle); 

    console.log(total + ', ' +  detalle + ', ' + resultado );
    
    if ( resultado > 0 ) {
        $('.a-IRR-aggregate-value').css("color", "#fdcb6e");
    }
    else if ( resultado == 0 ) {
        $('.a-IRR-aggregate-value').css("color", "#00b894");

    }
    else {
        $('.a-IRR-aggregate-value').css("color", "#e17055");

    } 

    $('.a-IRR-aggregate-type').eq(0).text('Saldo: ');
    $('.a-IRR-aggregate-value').eq(0).text(resultado);

}


function cambiarColorTodos() {

    cambiarColor();
    if ( resultado > 0 ) $('#report_58570531391109950_catch').find('.t-BadgeList-value').css("color", "#fdcb6e");
    else if ( resultado < 0 ) $('#report_58570531391109950_catch').find('.t-BadgeList-value').css("color", "#e17055"); 
    else $('#report_58570531391109950_catch').find('.t-BadgeList-value').css("color", "#00b894");

}


function initCompras() {
    $('#t_Button_navControl').attr("aria-expanded", "false");
}