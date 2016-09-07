as yet unclassified
renderToDoTaskActionsOn: html

	| todoItems |
	
	html div 
		class: 'row';
		style: 'margin-top: 20px;';
		with: [ 
			html div 
				class: 'col s5';
				with: [ 
					( self task status ~= 'Completed' ) ifTrue: [ 
						self renderToDoTaskActionEditOn: html.
					].
					
					( self task status = 'Backlog' ) ifTrue: [ 
						todoItems := self session user activeTasks. 
						( todoItems size < 5 ) ifTrue: [ 
							self renderToDoTaskActionActiveOn: html.
						].	
					].					
					
					( self task status = 'Active' ) ifTrue: [ 
						self renderToDoTaskActionCompletedOn: html.
						self renderToDoTaskActionBacklogOn: html.
					].		
		
					self renderToDoTaskActionDeleteOn: html.
				].

			html div 
				class: 'col s9'.	
		].	

						