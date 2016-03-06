as yet unclassified
renderToDoTaskNote: aNote On: html

	html div 
		class: 'row';
		with: [  
			html div
				class: 'col s1'.
			html div 
				class: 'col s10';
				class: 'note';
				with: aNote taskNote.
			html div 
				class: 'col s1'.		
		].			