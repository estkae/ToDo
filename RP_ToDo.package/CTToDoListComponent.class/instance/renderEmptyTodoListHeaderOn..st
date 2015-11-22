accessing
renderEmptyTodoListHeaderOn: html.

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'task-header';
				with: [ 	
					html div 
						class: 'col-md-2'.	
					html div 
						class: 'col-md-10';
						with: 'No active / completed tasks currently defined'.			
				].
		].		