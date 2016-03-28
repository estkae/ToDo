as yet unclassified
renderToDoTaskEditOn: html

	| taskPriorities |
	taskPriorities := #( High Medium Low ).
	
	html div 
		class: 'modal-content';
		with: [
			html heading level: 3; 
				with: [ 
					html span 
						style: 'border-bottom: 2px solid gray';
						with: 'Edit Task'
				].	
			html div 
				class: 'row';
				style: 'margin-top:20px;';
				with: [
					html paragraph 
						style: 'font-size:20px';
						with: 'Update the Task details - the description, deadline date or the task priority.'  
				].		
			html div 
				with: [  
					html form 
						class: 'form form-horizontal';
						with: [ 
							html div 
								class: 'col s12';
								with: [  
									html div 
										class: 'row';
										with: [ 
											html div 
												class: 'input-field col s8';
												with: [ 
													html italic 
														class: 'material-icons prefix';
														with: 'note_add'.
													html textInput 
														class: 'validate';
														id: 'task-description', self task id;
														autofocus;
														value: self task taskDescription.		
													html label 
														class: 'active';
														attributeAt: 'for' put: 'task-description', self task id;
														with: 'Description'.	
												].	
											html div 
												class: 'input-field col s8';
												with: [ 
													html italic 
														class: 'material-icons prefix';
														with: 'schedule'.
													html textInput 
														class: 'datepicker deadline-date';
														id: 'deadline-date', self task id;
														attributeAt: 'type' put: 'date';
														value: self task deadline.		
													html label 
														class: 'active';
														attributeAt: 'for' put: 'deadline-date', self task id;
														with: 'Date'.	
												].		
											html div 
												class: 'input-field col s8';
												with: [ 
													html italic 
														class: 'material-icons prefix';
														with: 'clear_all'.
													html select
														id: 'priority', self task id;
														style: 'margin-left:20px;';
														size: 3;	
														list:  taskPriorities; 
														selected: ( taskPriorities at: 1).
														"value: self task priority."		
													html label 
														attributeAt: 'for' put: 'priority', self task id;
														with: 'Priority'.			
												].	
										].	
									html div 
										class: 'row';
										style: 'margin-top:35px;';
										with: [
											html button 
												class: 'btn';
												style: 'margin-left:15px;';				
												with: 'Update'.   
											html button 
												class: 'btn';
												style: 'margin-left:15px;';				
												with: 'Cancel'.  														 
										]			
								]
						]	
				] 
		].	
				
	html document addLoadScript: ( ( JSStream on: '$(''.deadline-date'').pickadate({ formatSubmit: ''yyyy-mm-dd'', hiddenName: true })' ) ) .	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .		 					