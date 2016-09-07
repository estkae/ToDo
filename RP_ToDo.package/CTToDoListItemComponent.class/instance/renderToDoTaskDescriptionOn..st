as yet unclassified
renderToDoTaskDescriptionOn: html
	
	| myCurrentDate myDateClass myWidthClass |
	myCurrentDate := Date new; today.
	myCurrentDate yyyymmdd.
	
	( ( myCurrentDate yyyymmdd ) > self task deadline )
		ifTrue: [ 
			( self task status = 'Completed' ) 
				ifTrue: [ myDateClass := 'teal lighten-5' ] 
				ifFalse: [ myDateClass := 'red lighten-4' ]
		]
		ifFalse: [ myDateClass := 'teal lighten-5' ].
	( self task status = 'Active' )
		ifTrue: [ myWidthClass := 'col s4' ]
		ifFalse: [ myWidthClass := 'col s6' ].

	html div 
		class: 'col s11 ', ' task-details', self task id, ' ', myDateClass;
		style: 'padding-top:15px;padding-bottom:10px;margin-bottom:5px;border:3px solid lightgray;border-radius:5px;';
		with: [ 	
			html div
				class: 'description', self task id, ' ', myWidthClass;	
				style: 'font-size: 16px;font-family:Roboto;';
				with: self task taskDescription. 	
			html div 
				class: 'col s2 deadline', self task id;
				style: 'font-size: 16px;';
				with: self task deadline.	
			html div 
				class: 'col s2 priority', self task id;
				style: 'font-size: 16px;';
				with: self task priority.	
			( self task status = 'Active' ) ifTrue: [ 		
				html div 
					class: 'col s2 status', self task id;
					style: 'font-size: 16px;';
					with: self task status.
			].	
			html div 
				class: 'col s1';
				class: 'numberofnotes';
				with: [
					html span
					style: 'font-size: 16px;color:teal;'; 
					with: '( ', self task numberOfNotes, ' )' .
				]
		].	
	
		