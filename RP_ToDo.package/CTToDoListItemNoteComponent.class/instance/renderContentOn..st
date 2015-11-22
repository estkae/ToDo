as yet unclassified
renderContentOn: html

	html div 
		class: 'row';
		with: [  
			html div
				class: 'col-md-1'.
			html div 
				class: 'col-md-10';
				class: 'note';
				with: self note taskNote.
			html div 
				class: 'col-md-1'.		
		].	