as yet unclassified
renderContentOn: html

	| taskEdit |
	
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
					
			html div 
				id: 'task-edit-modal', self task id;
				class: 'modal modal-fixed-footer';
				style: 'height: 70%;';
				with: [
					taskEdit := CTToDoListItemTaskEditComponent new.
					taskEdit task: self task.
					html render: taskEdit.  
				].
			html div 
				id: 'task-action-modal', self task id;
				class: 'modal modal-fixed-footer';
				style: 'height: 40%;';
				with: [
					taskActionComponent task: self task.
					html render: taskActionComponent.  
				]			
		].			