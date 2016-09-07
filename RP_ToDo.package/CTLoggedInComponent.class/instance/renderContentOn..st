rendering
renderContentOn: html

	html div 
		class: 'side-nav';
		with: self menuComponent.
	
	html div 
		class: 'row';
		with: self bodyComponent.

	html document addLoadScript: (html jQuery document onAjaxError: (self ajaxErrorHandler asFunction: #('event' 'jqxhr' 'settings' 'exception')))		

						