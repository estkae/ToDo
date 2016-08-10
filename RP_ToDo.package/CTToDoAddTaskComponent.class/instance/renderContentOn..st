rendering
renderContentOn: html
	
	html div 
		class: 'row task-entry-block';
		with: [
			html div 
				class: 'col s12';
				style: 'border-bottom:1px solid lightgray;'.
			
			html div 
				class: 'row';
				with: [ 
					html div 
						class: 'col s12';
						style: 'border: 4px solid lightgray;border-radius:5px;background-color:#f5f5f5;';
						with: [ 
							html div 
								class: 'login-form';
								with: [									
									html div 
										with: [ 
											html div 
												class: 'col s12';
												style: 'margin-top:10px;';
												with: [ 
													self messageComponent infoMessage: 'Please enter task details - then Save (or Cancel).'.
													html render: self messageComponent.
												].	
	 		 								html form
												class: 'form form-horizontal';
												with: [ 
													html div 
														class: 'col s12';
														with: [ self renderAddTaskDescriptionOn: html ].
													html div 
														class: 'col s12';
														with: [ self renderAddTaskDateOn: html ].
													html div 
														class: 'col s12';
														with: [ self renderAddTaskSelectPriorityOn: html ].	
													html div 
														class: 'col s12';
														with: [ self renderAddTaskSelectAddToBacklogOn: html ].			
													html div 
														class: 'col s12';
														with: [ self renderAddTaskButtonsOn: html ].
												]
										]	
								].		
						].
				].					
		]. 