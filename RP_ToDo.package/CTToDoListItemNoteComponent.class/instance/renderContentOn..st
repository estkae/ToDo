as yet unclassified
renderContentOn: html

	html div 
		class: 'row';
		style: 'margin-bottom:5px;';
		with: [  
			html div
				class: 'col s1'.
			html div 
				class: 'col s10';
				class: 'note';
				with: self note taskNote.
			html div 
				class: 'col s1'.		
		].	