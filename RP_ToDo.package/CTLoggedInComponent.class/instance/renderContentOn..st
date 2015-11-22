rendering
renderContentOn: html
	html div 
		class: 'row';
		with: self navBarComponent.
	html div 
		class: 'row';
		with: self bodyComponent.	
	html div 
		class: 'row';
		with: self aboutComponent.			