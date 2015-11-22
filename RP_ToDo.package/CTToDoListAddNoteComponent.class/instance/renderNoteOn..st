accessing
renderNoteOn: html 

	"this does work - sort of."
	html div 
		class: 'row';
		with: [  
			html div
				class: 'col-md-1'.
			html div 
				class: 'col-md-10';
				class: 'note';
				with: 'This is my note.'.
			html div 
				class: 'col-md-1'.		
		].	


