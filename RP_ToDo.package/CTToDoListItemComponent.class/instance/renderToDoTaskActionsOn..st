as yet unclassified
renderToDoTaskActionsOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col-md-1'.
			html div 
				class: 'col-md-5';
				with: [ 
					self task status = 'Active' ifTrue: [ 
						html anchor 
							class: 'task-complete';
							class: 'task-action';
							callback: [ self completeTask ];
							with: [ 
								html span 
									style: 'border-bottom: 1px solid lightblue;'; 
									with: 'Completed'
							]		
					].
		
					html anchor 
						class: 'task-delete';
						class: 'task-action';
						callback: [ self deleteTask ];					
						with: [ 
							html span 
								style: 'border-bottom: 1px solid lightblue;'; 
								with: 'Delete'
						].
						
					html anchor 
						class: 'task-delete';
						class: 'task-action';
						callback: [ self deleteTask ];					
						with: [ 
							html span 
								style: 'border-bottom: 1px solid lightblue;'; 
								with: 'Move to Backlog'
						].	
				].

			html div 
				class: 'col-md-9'.	
		].				