as yet unclassified
renderContentOn: html

	html div 
		id: 'task-block', self task id;
		style: 'padding-top:10px;padding-bottom:5px;margin-bottom:5px;';
		with: [ 
			html div 
				class: 'row';
				style: 'margin-bottom:5px;';
				with: [ 
					self  renderToDoTaskDescriptionOn: html. 
					self renderToDoTaskExpandOn: html.	
				].		
			html div
				class: 'row';
				class: 'task-data', self task id;
				class: 'task-data-notes';
				style: 'display:none;';
				with: [ self  renderToDoTaskNotesOn: html. ]. 	
		].			