as yet unclassified
renderToDoTaskNote: aNote On: html

	html div 
		class: 'row';
		with: [  
			html div
				class: 'col-md-1'.
			html div 
				class: 'col-md-10';
				class: 'note';
				with: aNote taskNote.
			html div 
				class: 'col-md-1'.		
		].			