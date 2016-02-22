initialization
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css'.
	anHtmlRoot stylesheet
		url: 'http://localhost:8000/css/top_10.css'.
	anHtmlRoot stylesheet
		url: 'http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'.
	anHtmlRoot javascript
		url: 'http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js'.					
	anHtmlRoot javascript
		url: 'http://localhost:8000/js/main.js'.			