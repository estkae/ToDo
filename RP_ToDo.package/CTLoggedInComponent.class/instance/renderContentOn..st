rendering
renderContentOn: html

	html div 
		class: 'side-nav';
		with: self menuComponent.
	
	html div 
		class: 'row';
		with: self bodyComponent.

						