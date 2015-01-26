function dotime(){
	//<body onLoad="dotime()">	
	//setTimeout(function(){ dotime();}, 1000);
}

var Marker = {
	setup: function(){
		var mark = $("#map");
		if ((mark.length > 0) && (typeof map !== 'undefined')){
			//the page has this id on it
			//Marker.setvar();
			//Marker.markerInterval();
			console.log('CALLED interval');
		}
	},
	markerInterval: function(){
		// calls action refreshing the partial
		function refreshPartial() {	
			$.ajax({
			    url: "drifter"
			 })
			console.log("calling every 5 seconds");
			setInterval(refreshPartial, 5000);
		}
		// will call refreshPartial every 3 seconds
		setInterval(refreshPartial, 5000);
		
	},
	setvar: function(){
		var adjust = L.AwesomeMarkers.icon({
		    icon: 'fa-adjust',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var asterisk = L.AwesomeMarkers.icon({
		    icon: 'fa-asterisk',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var down = L.AwesomeMarkers.icon({
		    icon: 'fa-hand-o-down',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var archive = L.AwesomeMarkers.icon({
		    icon: 'fa-archive',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var circle = L.AwesomeMarkers.icon({
		    icon: 'fa-circle',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var cloud = L.AwesomeMarkers.icon({
		    icon: 'fa-cloud',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var certificate = L.AwesomeMarkers.icon({
		    icon: 'fa-certificate',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var fighter_jet = L.AwesomeMarkers.icon({
		    icon: 'fa-fighter-jet',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var coffee = L.AwesomeMarkers.icon({
		    icon: 'fa-coffee',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var cog = L.AwesomeMarkers.icon({
		    icon: 'fa-cog',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var bug = L.AwesomeMarkers.icon({
		    icon: 'fa-bug',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var beer = L.AwesomeMarkers.icon({
		    icon: 'fa-beer',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var arrow = L.AwesomeMarkers.icon({
		    icon: 'fa-arrow-circle-o-right',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var dot = L.AwesomeMarkers.icon({
		    icon: 'fa-dot-circle-o',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var plus = L.AwesomeMarkers.icon({
		    icon: 'fa-plus-circle',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var rocket = L.AwesomeMarkers.icon({
		    icon: 'fa-rocket',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var smile = L.AwesomeMarkers.icon({
		    icon: 'fa-smile-o',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var star = L.AwesomeMarkers.icon({
		    icon: 'fa-star-o',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var shopping = L.AwesomeMarkers.icon({
		    icon: 'fa-shopping-cart',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var trophy = L.AwesomeMarkers.icon({
		    icon: 'fa-trophy',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
		 var tachometer = L.AwesomeMarkers.icon({
		    icon: 'fa-tachometer',
		    prefix: 'fa',
		    markerColor:'orange'
		  });
	},
};
$(Marker.setup);			