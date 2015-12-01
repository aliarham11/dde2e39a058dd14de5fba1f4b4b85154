jQuery(document).ready(function() {
	jQuery('#pamtogg').click(function() { jQuery('#pampane').toggle(); infotogicon('#pamtogicon'); });
    jQuery('#poitogg').click(function() { jQuery('#poipane').toggle(); infotogicon('#poitogicon'); });
    jQuery('#demotogg').click(function() { jQuery('#demopane').toggle(); infotogicon('#demotogicon'); });
    jQuery('#sestogg').click(function() { jQuery('#sespane').toggle(); infotogicon('#sestogicon'); });
    //--- POI classes and sub-classes ---//
		jQuery('p.catle').click(function() {
			var cattog = jQuery(this);
			var togico = cattog.find('.catog');
			cattog.next('ul.sublist').toggle();
			listogicon(togico);
		});
    
    //CHANGE AREA
    jQuery('#prosel').change(function() {
        var areaid = jQuery('#prosel').val();
        jQuery('#subdissel').val(0);
        if (areaid != "") {
			jQuery.ajax({
                cache: false,
                type: 'POST',
                url: 'coverage/district_list',
                data: {areaid:areaid},
                dataType: 'html',
                success: function(data) {
                                jQuery('#dissel').html(data);
								$('#dissel').attr('disabled', false);
								getAreaMap();
                            }
            });
        } else {
            jQuery('#dissel').html("<option value=\"\">--- All District ---</option>");
			$('#dissel').attr('disabled', true);
        }
    });
	
	jQuery('#dissel').change(function() {
		var areaid = jQuery('#dissel').val();
        if (areaid != "") {
			jQuery.ajax({
                cache: false,
                type: 'POST',
                url: 'coverage/subdistrict_list',
                data: {areaid:areaid},
                dataType: 'html',
                success: function(data) {
                                jQuery('#subdissel').html(data);
								$('#subdissel').attr('disabled', false);
								getAreaMap();
                            }
            });
        } else {
            jQuery('#subdissel').html("<option value=\"\">--- All District ---</option>");
			$('#subdissel').attr('disabled', true);
        }
    });
    
    jQuery('#subdissel').change(function() {
		getAreaMap();
	});
	
});
