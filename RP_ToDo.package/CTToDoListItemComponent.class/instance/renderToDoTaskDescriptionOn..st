as yet unclassified
renderToDoTaskDescriptionOn: html.
	
"expand code was here ..."	
	
	html div 
		class: 'col s11 teal lighten-5';
		style: 'padding-top:10px;padding-bottom:5px;margin-bottom:5px;';
		with: [ 	
			html div
				class: 'col s4 description', self task id;
				style: 'font-size: 18px;font-family:Roboto;';
				with: self task taskDescription. 	
			html div 
				class: 'col s2 deadline', self task id;
				style: 'font-size: 18px;';
				with: self task deadline.	
			html div 
				class: 'col s2 priority', self task id;
				style: 'font-size: 18px;';
				with: self task priority.	
			html div 
				class: 'col s2 status', self task id;
				style: 'font-size: 18px;';
				with: self task status.
			html div 
				class: 'col s1';
				class: 'numberofnotes';
				with: [
					html span
					style: 'font-size: 18px;color:teal;'; 
					with: '( ', self task numberOfNotes, ' )' .
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