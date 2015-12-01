function drawcircle(mapobj, center, radius, pctstart, pctend, color, f) {
	var zoomLevel = gmap.getZoom();
	var r=radius*Math.pow(2,20-zoomLevel)/32768;
	var pointnum = Math.ceil((pctend-pctstart)/0.01);
	var Coords = new Array();
	Coords[0]= center;
	for(i=0;i<pointnum;i++){
		Coords[i+1]= new google.maps.LatLng(
			center.lat()+r*Math.sin(Math.PI*(pctstart+i*0.01)*2 ), 
			center.lng()+r*Math.cos(Math.PI*(pctstart+i*0.01)*2 ));
	}
		Coords[pointnum+1]= new google.maps.LatLng(
			center.lat()+r*Math.sin(Math.PI*(pctend)*2 ), 
			center.lng()+r*Math.cos(Math.PI*(pctend)*2 ));
	Coords[pointnum+2]=center;
	
	polyobj = new google.maps.Polygon({
		paths: Coords,
		strokeOpacity: 1,
		strokeWeight: 1,
		fillColor: color,
		fillOpacity: 1
		});
	polyobj.setMap(mapobj);
	google.maps.event.addListener(polyobj, 'click', f);
	return polyobj;
}

function pieMarker(mapobj, center, radius, piedata, piecolor, onclick) {
	
	var slice = new Array();
	var datanum = piedata.length;
	var curdata = 0;
	//var piecolor = ['#FF0000','#00FF00','#0000FF','#FFFF00','#00FFFF','#FF00FF','#FFFFFF','#888888','#555555'];
	for(j=0;j<datanum;j++){
		slice[j]=drawcircle(mapobj,center,radius,curdata,curdata+piedata[j],piecolor[j], onclick[j]);
		curdata=curdata+piedata[j];
	}
	google.maps.event.addListener(mapobj, 'zoom_changed', function() {
		for(k=0;k<datanum;k++){
			slice[k].setMap(null);
			slice[k]=drawcircle(mapobj,center,radius,curdata,curdata+piedata[k],piecolor[k], onclick[k]);
			curdata=curdata+piedata[k];
		}
	});
}
        