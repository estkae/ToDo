as yet unclassified
renderToDoTaskDescriptionOn: html.
		
	html div
		class: 'task';
		with: [ 
			self task status = 'Completed'
				ifTrue: [ 
					html div 
						class: 'col-md-1'.
					html div 
						class: 'col-md-5';
						class: 'completed';
						with: self task taskDescription.
				]
				ifFalse: [
					html div 
						class: 'col-md-1'.
					html div 
						class: 'col-md-5';
						with: self task taskDescription. 
				 ].	
			html div 
				class: 'col-md-3';
				with: self task status.
			html div 
				class: 'col-md-1';
				with: [  
					html anchor 
						class: 'btn expand';														
						with: [ 
							html span 
								class: 'fa';
								class: 'fa-plus';
								class: 'fa-2x'		
						] .
				].
			html div 
				class: 'col-md-1';
				class: 'numberofnotes';
				with: [
					html span 
					with: '( ', self task numberOfNotes, ' )' .
				].
			html div 
				class: 'col-md-1'.		
		].			