var total = 0;
var monto = 0; //obtener
var cantidades = [0,0,0,0,0,0,0,0,0,0,0,0];

function updateValor (){ 
    total = 0;
    cantidades.forEach(function(element) {
        total+=element;
    });
    
    $('#total').prepend().html($.trim(Math.round(total*100)/100));

    $('#abonado').text(Math.round(total*100)/100);
    $('#monto').text(Math.round(monto*100)/100);
    if((Math.round(total*100)/100 ) >= (Math.round(monto*100)/100 )){
        $('#vuelto').text(Math.round((total-monto) *100)/100 );
        $('#resta').text("Falta: Q " +0);
    }else{
        $('#vuelto').text(0 );
        $('#resta').text("Falta: Q " +Math.round((monto-total) *100)/100 );
    }
}

$("#m_200").change(function () {
      cantidades[0] = $(this).val()*200; 
      
    $('#r_200').prepend().html($.trim(cantidades[0]));
    updateValor();
    
});

$("#m_100").change(function () {
      cantidades[1] = $(this).val()*100; 
    $('#r_100').prepend().html($.trim(cantidades[1]));
    updateValor();
});

$("#m_50").change(function () {
      cantidades[2] = $(this).val()*50; 
    $('#r_50').prepend().html($.trim(cantidades[2]));
    updateValor();
});

$("#m_20").change(function () {
      cantidades[3] = $(this).val()*20; 
    $('#r_20').prepend().html($.trim(cantidades[3]));
    updateValor();
});

$("#m_10").change(function () {
      cantidades[4] = $(this).val()*10; 
    $('#r_10').prepend().html($.trim(cantidades[4]));
    updateValor();
});

$("#m_5").change(function () {
    cantidades[5] = $(this).val()*5; 
    $('#r_5').prepend().html($.trim(cantidades[5]));
    updateValor();
});

$("#m_1").change(function () {
    cantidades[6] = $(this).val()*1; 
    $('#r_1').prepend().html($.trim(cantidades[6]));
    updateValor();
});

$("#m_c50").change(function () {
    cantidades[7] = $(this).val()*0.5; 
    $('#r_c50').prepend().html($.trim(cantidades[7]));
    updateValor();
});


$("#m_c25").change(function () {
    cantidades[8] = $(this).val()*0.25;    
    $('#r_c25').prepend().html($.trim(cantidades[8]));
    updateValor();
});

$("#m_c10").change(function () {
    cantidades[9] = $(this).val()*0.10; 
    $('#r_c10').prepend().html($.trim(cantidades[9]));
    updateValor();
});

$("#m_c5").change(function () {
    cantidades[10] = $(this).val()*0.05;    
    $('#r_c5').prepend().html($.trim(cantidades[10]));
    updateValor();
});

$("#m_c1").change(function () {
    cantidades[11] = $(this).val()*0.01;    
    $('#r_c1').prepend().html($.trim(cantidades[11]));
    updateValor();
});

function Comprobar() {
     if((Math.round(total*100)/100 ) >= (Math.round(monto*100)/100 )){
        if (window.confirm('Pago aplicado exitosamente')){
            window.location = 'index.html';
        }
    }else{
        alert("Pago insuficiente");
    }
}

window.onload = function() {
    monto = document.getElementById("entrada").value;
    console.log(monto);
    console.log("monto");
    $('#r_200').prepend().html($.trim(0));
    $('#r_100').prepend().html($.trim(0));
    $('#r_50').prepend().html($.trim(0));
    $('#r_20').prepend().html($.trim(0));
    $('#r_10').prepend().html($.trim(0));
    $('#r_5').prepend().html($.trim(0));
    $('#r_1').prepend().html($.trim(0));
    $('#r_c50').prepend().html($.trim(0));
    $('#r_c25').prepend().html($.trim(0));
    $('#r_c10').prepend().html($.trim(0));
    $('#r_c5').prepend().html($.trim(0));
    $('#r_c1').prepend().html($.trim(0));
    $('#total').prepend().html($.trim(0));
    $('#abonado').text(0);
    $('#monto').text(monto);
    $('#vuelto').text(0);
    $('#resta').text("Falta Q "+ monto);
};


