function setValues() {
    var costo = $('#P7_COSTO').val().slice(1).replace(",","")
    var venta = $('#P7_VENTA').val();
    var ganancia = parseFloat(venta) - parseFloat(costo); 
    var porcentaje = parseFloat(ganancia) / parseFloat(costo) * 100; 
    ganancia = ganancia || 0;
    porcentaje = porcentaje || 0;

    
    $('#P7_GANANCIA').val(ganancia.toFixed(2));
    $('#P7_PORCENTAJE').val(porcentaje.toFixed(2));
}


function KeyUpVentas (){
    var costo = $('#P7_COSTO').val().slice(1).replace(",","");
    var venta = $('#P7_VENTA').val();
    var ganancia = parseFloat(venta) - parseFloat(costo); 
    var porcentaje = parseFloat(ganancia) / parseFloat(costo) * 100;;
    ganancia = ganancia || 0;
    porcentaje = porcentaje || 0;
        
    $('#P7_GANANCIA').val(ganancia.toFixed(2));
    $('#P7_PORCENTAJE').val(porcentaje.toFixed(2));    
    
}

function KeyUpGanancia (){    
    var costo = $('#P7_COSTO').val().slice(1).replace(",","");
    var ganancia = $('#P7_GANANCIA').val();
    var porcentaje = parseFloat(ganancia) / parseFloat(costo) * 100;
    var venta = parseFloat(costo) + parseFloat(ganancia);
    venta = venta || 0;
    porcentaje = porcentaje || 0;
    
    $('#P7_VENTA').val(venta.toFixed(2));
    $('#P7_PORCENTAJE').val(porcentaje.toFixed(2));
}

function KeyUpPorcentaje (){
    var costo = $('#P7_COSTO').val().slice(1).replace(",","");
    var porcentaje = $('#P7_PORCENTAJE').val();
    var ganancia = parseFloat(costo) * parseFloat(porcentaje/100);
    var venta = parseFloat(costo) + parseFloat(ganancia);
    venta = venta || 0;
    ganancia = ganancia || 0;
    
    $('#P7_VENTA').val(venta.toFixed(2));
    $('#P7_GANANCIA').val(ganancia.toFixed(2));
}

function kkeyu() {
    console.log('test');
}

