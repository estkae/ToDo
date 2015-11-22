as yet unclassified
renderToDoTaskActionsOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col-md-1'.
			html div 
				class: 'col-md-2';
				with: [ 
					self task status = 'Active' ifTrue: [ 
						html anchor 
							class: 'task-complete';
							class: 'task-action';
							callback: [ self completeTask ];
							with: 'Completed'.
					].
		
					html anchor 
						class: 'task-delete';
						class: 'task-action';
						callback: [ self deleteTask ];					
						with: 'Delete'.
				].

			html div 
				class: 'col-md-9'.	
		].				