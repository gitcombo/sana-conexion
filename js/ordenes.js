


function refreshTotal() {
    
    var precio =    ; 
    var cantidad = $('#P31_CANTIDAD').val();
    var total = parseFloat(precio) * parseFloat(cantidad);
    $('#P31_TOTAL').val(total);

}



function refreshExtras() {
    
    var precio = $('#P18_PRECIO_UNITARIO').val(); 
    var cantidad = $('#P18_CANTIDAD').val();
    var total = parseFloat(precio) * parseFloat(cantidad);
    total = total || 0;
    $('#P18_TOTAL').val(total.toFixed(2));
}