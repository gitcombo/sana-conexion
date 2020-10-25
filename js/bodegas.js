function actualizarBadges() {

    var cantidad = $('#P20_ALERT').val();
    $('.bodega-custom-badge').parent().find('.t-NavTabs-badge ').text(cantidad); 

}


function addLinkClass() {
    $('td[headers="link-class"]').find('a').addClass('colorlink');
}