updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	anHtmlRoot stylesheet
		url: 'http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'.		
	anHtmlRoot stylesheet
		url: 'http://localhost:8000/css/top_10.css'.
	anHtmlRoot javascript
		url: 'http://localhost:8000/js/main.js'.	