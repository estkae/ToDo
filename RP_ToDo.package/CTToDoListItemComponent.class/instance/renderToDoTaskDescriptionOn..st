as yet unclassified
renderToDoTaskDescriptionOn: html.
		
	html div
		class: 'task';
		with: [ 
			html div 
				class: 'col s1'.
			html div 
				class: 'col s4';
				style: 'font-size: 18px;font-family:Roboto;';
				with: self task taskDescription. 
		].
	
	html div 
		class: 'col s2';
		style: 'font-size: 18px;';
		with: self task deadline.	
	html div 
		class: 'col s2';
		style: 'font-size: 18px;';
		with: self task priority.	
	html div 
		class: 'col s2';
		style: 'font-size: 18px;';
		with: self task status.
	html div 
		class: 'col s1';
		class: 'numberofnotes';
		with: [
			html span
			style: 'font-size: 18px;color:teal;'; 
			with: '( ', self task numberOfNotes, ' )' .
		].	
	html div 
		class: 'col s1';
		with: [  
			html anchor 
				class: 'expand';	
				class: 'zoom-in';
				script: (
					( html jQuery this )
						on: 'click'
						do: (
								( "reset stuff - initialize" 
								( ( html jQuery class: 'zoom-out' ) addClass: 'zoom-in' ),
								( ( html jQuery class: 'zoom-out' ) removeClass: 'zoom-out' ),
								"update classes for zoom icon"
								 ( ( html jQuery this ) removeClass: 'zoom-in' ),
								( ( html jQuery this ) addClass: 'zoom-out' ),
								( ( html jQuery class: 'task-notes-expand' ) text: 'zoom_in'  ),
								( ( html jQuery class: 'task-notes-expand', self task id ) text: 'zoom_out'  ),
								"hide and show as appropriate"
								( ( html jQuery class: 'note-input' ) hide: 0.1 seconds ),
								( ( html jQuery class: 'task-data-notes' ) hide: 0.2 seconds ),
								( ( html jQuery class: 'task-data', self task id ) show: 0.3 seconds ) ) 
							condition: ( html jQuery this hasClass: 'zoom-in' )
							else: ( ( ( html jQuery this ) removeClass: 'zoom-out' ),
								( ( html jQuery this ) addClass: 'zoom-in' ),
								( ( html jQuery class: 'task-notes-expand', self task id ) text: 'zoom_in'  ),
								( ( html jQuery class: 'task-data', self task id ) hide: 0.3 seconds ) ) 
							"else: ( JSScript new add: ( ( html jQuery this ) removeClass: 'zoom-out' ); yourself )"
							"( ( html jQuery this ) hasClass: 'zoom-in' ) then: ( ( html jQuery this) addClass: 'test-zoom-in' )  else: ( ( html jQuery this ) addClass: 'test-zoom-out' )"								
						)								
				);																		
				with: [ 
					html italic 
						class: 'material-icons';
						class: 'task-notes-expand task-notes-expand', self task id;
						style: 'font-size:30px;color:black;cursor:pointer;';
						with: 'zoom_in'
				]		
		].
	
"	html div 
		class: 'col s1';
		class: 'numberofnotes';
		with: [
			html span
			style: 'font-size: 18px;color:teal;'; 
			with: '( ', self task numberOfNotes, ' )' .
		]."
	html div 
		class: 'col s1'.				