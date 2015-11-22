as yet unclassified
renderContentOn: html

	html div 
		class: 'task-block';
		with: [ 
			html div 
				class: 'row';
				with: [ self  renderToDoTaskDescriptionOn: html. ].

			html div
				class: 'task-data';
				with: [ self  renderToDoTaskNotesOn: html. ]. 
		
			html div
				class: 'task-action';
				with: [ self  renderToDoTaskActionsOn: html. ]. 
		].		