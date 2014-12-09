function abrirModal(idModal,mensaje,titulo, height, width, parentId)
{
    var scrollTop = $(document).scrollTop();
    var scrollLeft = $(document).scrollLeft();
    $("#" + idModal).html(mensaje);
    var heightF = '200';
    var widthF = '350';
    if (height > 0) {
        heightF = height;
    }
    if (width > 0) {
        widthF = width;
    }


//    var top = posicion.top + objeto.height() + 1;
    var dialogOpts = {
         dialogClass: 'dlgfixed',
//        position: "center",
        show: "toggle",
        height: heightF,
        width: widthF,
        closeOnEscape: true,
        title: titulo,
        modal: true,

    };

    $("#" + idModal).dialog(dialogOpts);
}

