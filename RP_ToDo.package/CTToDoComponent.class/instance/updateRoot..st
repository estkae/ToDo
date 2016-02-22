accessing
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css'.
	anHtmlRoot stylesheet
		url: 'http://localhost:8000/css/default.css'.	
	anHtmlRoot stylesheet
		url: 'http://localhost:8000/css/default.date.css'.
	anHtmlRoot stylesheet
		url: 'http://localhost:8000/css/default.time.css'.	
	anHtmlRoot javascript
		url: 'http://localhost:8000/js/picker.js'.			
	anHtmlRoot javascript
		url: 'http://localhost:8000/js/picker.date.js'.	
	anHtmlRoot javascript
		url: 'http://localhost:8000/js/picker.time.js'.										
	anHtmlRoot javascript
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js'.						