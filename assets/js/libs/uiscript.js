//------- page loader toggle -------//
function showPageLoader() {
    jQuery('#loading').fadeIn(200);
}

function hidePageLoader() {
    jQuery('#loading').fadeOut(200);
}

//------- page layout component resize -------//
function pgctntdims() {
    var vpw = jQuery(window).width(),
        vph = jQuery(window).height(),
        pghdr = jQuery('#pghead'),
        sdpnl = jQuery('#sidepanel'),
        sdtrg = jQuery('#sidetrigger'),
        linkholder = jQuery('#linktab'),
        filterholder = jQuery('#filter'),
        ctntpnl = jQuery('#contentpanel'),
        mapcanvas = jQuery('#mapcanvas'),
        hdrheight = pghdr.outerHeight(true),
        linksheight = linkholder.outerHeight(true);
        sdpnlwidth = sdpnl.outerWidth(true),
        sdtrgwidth = sdtrg.outerWidth(true);
    
    var cntntw;
    var cntnth = vph - hdrheight;
    
    cntnth = (cntnth < 500) ? 500 : cntnth;
    filterheight = 0.9 * cntnth;
    filterholder.css('max-height',filterheight+'px');
    filterholder.css('margin-right',sdtrgwidth+'px');
    linkholder.css('margin-right',sdtrgwidth+'px');
    
    ctntpnl.height(cntnth);
    mapcanvas.height(cntnth);
    
    cwraph = 0.85 * cntnth;
    jQuery('#conwrap').css('max-height',cwraph+'px');
    google.maps.event.trigger(gmap, 'resize');
}

function cntntdim() {
    var vpw = jQuery(window).width(),
        vph = jQuery(window).height(),
        pghdr = jQuery('#pghead'),
        dtnav = jQuery('#dtnav'),
        pgcnt = jQuery('#pgcontent'),
        navheight = dtnav.outerHeight(true),
        hdrheight = pghdr.outerHeight(true);
    
    var cntnth = vph - hdrheight;
    
    cntnth = (cntnth < 500) ? 500 : cntnth;
    pgcnt.height(cntnth);
}

function pghlp() {
    var vpw = jQuery(window).width(),
        vph = jQuery(window).height(),
        pghdr = jQuery('#pghead'),
        pgcnt = jQuery('#pgcontent'),
        hdrheight = pghdr.outerHeight(true);
    
    var cntnth = vph - hdrheight;
    
    cntnth = (cntnth < 500) ? 500 : cntnth;
    pgcnt.height(cntnth);
    jQuery('#papwrap').css('min-height',cntnth+'px');
}


//------- sidepanel toggle functions -------//
function hidesidepanel() {
    var trigger = jQuery('#sidetrigger'),
        panel = jQuery('#sidepanel'),
        trgw = trigger.outerWidth(true),
        pnlw = panel.outerWidth(true);
    
    var pnlsize = pnlw - trgw;
    
    panel.animate({ left: -pnlsize });
    panel.removeClass('pnlshown');
}

function showsidepanel() {
    var panel = jQuery('#sidepanel'),
        pnlw = panel.width();
    
    panel.animate({ left: 0 });
    panel.addClass('pnlshown');
}

function sidepaneltoggle() {
    var panel = jQuery('#sidepanel');
        ptrig = jQuery('#sidetrigger');
    
    ptrig.click(function() {
        if (panel.hasClass('pnlshown')) {
            hidesidepanel();
        }else{ showsidepanel();
            }
    });
}

//------- infopanel toggle functions -------//
function hideinfopanel() {
    var ptrg = jQuery('#detrigger'),
        pcnt = jQuery('#decontent'),
        pcwdth = pcnt.outerWidth(true)+20;
    
    pcnt.animate({ right: -pcwdth });
    ptrg.animate({ right: 0 });
    pcnt.removeClass('infoshown');
}

function showinfopanel() {
    var ptrg = jQuery('#detrigger'),
        pcnt = jQuery('#decontent'),
        pcwdth = pcnt.outerWidth(true);
    
    pcnt.animate({ right: 0 });
    ptrg.animate({ right: pcwdth });
    pcnt.addClass('infoshown');
}

function infotoggle() {
    var ptrg = jQuery('#detrigger'),
        pcnt = jQuery('#decontent');
    
    ptrg.click(function() {
        if (pcnt.hasClass('infoshown')) {
            hideinfopanel();
        }else{  showinfopanel();
            }
    })
}

//------- infopanel detail data toggle functions (plus/minus sign) -------//
function infotogicon(idtog) {
    if (jQuery(idtog).hasClass('paneshown')) {
        jQuery(idtog).removeClass('paneshown');
        jQuery(idtog).addClass('panehidden');
    }else if (jQuery(idtog).hasClass('panehidden')) {
            jQuery(idtog).removeClass('panehidden');
            jQuery(idtog).addClass('paneshown');
        }
}

//------- sub-category list toggle functions (triangle sign) -------//
function listogicon(idtog) {
    if (jQuery(idtog).hasClass('arrshown')) {
        jQuery(idtog).removeClass('arrshown');
        jQuery(idtog).addClass('arrhidden');
    }else if (jQuery(idtog).hasClass('arrhidden')) {
            jQuery(idtog).removeClass('arrhidden');
            jQuery(idtog).addClass('arrshown');
        }
}

//----- data form functions -----//
//input validation
function validchar(field) {
    jQuery(field).keyup(function() {
                    var chr = jQuery(this);
                    chr.val(chr.val().replace(/[^a-zA-Z0-9 \?\!\,\.\;\-\(\)]/g, ''));
                    chr.val(chr.val().replace(/\s{2,}/g, ' '));
                });
}

function validnum(field) {
    jQuery(field).keyup(function() {
                    var chr = jQuery(this);
                    chr.val(chr.val().replace(/[^0-9\-\.]/g, ''));
                });
}

//validate checkbox
function xcheck(a, b) {
    jQuery(a).change(function() {
                if (jQuery(a).is(':checked')) {
                    if (jQuery(b).is(':checked')) {
                        jQuery(b).removeAttr('checked');
                    }
                }
            });
    
    jQuery(b).change(function() {
                if (jQuery(b).is(':checked')) {
                    if (jQuery(a).is(':checked')) {
                        jQuery(a).removeAttr('checked');
                    }
                }
            });
};

//reset form **add data
function resetform() {
    jQuery('input[type=checkbox]').removeAttr('checked');
    jQuery('input[type=date]').val('');
    jQuery('input[type=file]').val('');
    jQuery('input[type=number]').val('');
    jQuery('input[type=text]').val('');
    jQuery('select').val('');
    jQuery('textarea').val('');
};

//disable form **add data
function disform() {
    jQuery('input').attr('disabled', 'disabled');
    jQuery('select').attr('disabled', 'disabled');
    jQuery('textarea').attr('disabled', 'disabled');
};

//get initial value for form.select **edit data
function getinival(elm) {
    var init = jQuery(elm).attr('data-inival');
    jQuery(elm+' option[value='+init+']').attr('selected','selected');
};

//get initial value for form.checkbox **edit data
function getchkd(elm) {
    var init = jQuery(elm).attr('data-inival');
    var arrval = new Array();
    arrval = init.split(',');
    var arrlen = arrval.length;
    for(i=0;i<arrlen;i++) {
        jQuery(':checkbox[value='+arrval[i]+']').attr('checked','checked');
    }
};

//area category :: csv-to-html
function arcoded(csvdata) {
    var catarr = csvdata.split(',');
    var catidx = catarr.length - 1;
    var arlist = '';
    
    for (i=0; i<catidx; i++) {
        arlist += '- '+catarr[i]+'<br>';
    }
    arlist += '- '+catarr[catidx];
    
    return arlist;
}
