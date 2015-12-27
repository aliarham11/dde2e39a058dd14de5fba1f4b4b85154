$(document).ready(function() {

	var domscripts = {

		init: function init () {

			var self = this;
			self.installSyntaxHighlighting();
			self.drawSimpleDummyExample("OrganiseChart-array-result");
			self.drawSimpleDummyExample("OrganiseChart-json-result");

		},

		installSyntaxHighlighting: function installSyntaxHighlighting () {
			var highlightStyle = "peachpuff";

			if (jQuery.fn.snippet) {
				$("pre.htmlCode").snippet("html", {style: highlightStyle});
				$("pre.cssCode").snippet("css", {style: highlightStyle});
				$("pre.jsCode").snippet("javascript", {style: highlightStyle});
			}
		},

		drawSimpleDummyExample: function(id) {
			var paths = [
				{path:'M 166,64.5 C 166,79.5 227.5,79.5 227.5,94.5',style:{"stroke":"black"}},
				{path:'M 166,64.5 C 166,79.5 94,79.5 94,94.5',style:{"stroke":"black"}}
			];

			var i = paths.length,
				_R = Raphael(document.getElementById(id));

			while(i--) {
				var line = paths[i],
					connLine = _R.path(line.path);

				connLine.attr(line.style);
			}
		}
	};

	domscripts.init();
});
