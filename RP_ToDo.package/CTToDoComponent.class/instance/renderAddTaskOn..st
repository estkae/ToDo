as yet unclassified
renderAddTaskOn: html

	| validTaskInput |
	
	html div 
		class: 'container task-entry-block';
		with: [
			html div 
				with: [
					html horizontalRule.  
				].
			html div 
				class: 'message';
				style: 'width:100%;';
				with: [  
					html div 
						class: 'center-block';
						with: [ 
							html paragraph 
								style: 'color:gray;'; 
								with: 'Please enter a task description, a date when this task should be completed and a suitable priority - then Save (or Cancel).'
						]	
				].
			html div 
				class: '';
				with: [
					html form 
						class: 'form-horizontal';
						style: 'margin-top: 25px;';
						with: [
							html div 
								class: 'form-group';
								with: [ 
									html label
										class: 'control-label';
										class: 'col-sm-3';
										with: [ 
											html text: 'Description :'.
										].
									html div 
										class: 'col-sm-9';
										with: [ 	
											html textInput 
												class: 'form-control';
												autofocus;
												attributeAt: 'autocomplete' put: 'off';
												placeholder: 'Description';
												on: #description of: self.
										].
									html div 
										class: 'col-sm-3'.
								].	
							html div 
								class: 'form-group';
									with: [ 	
										html label
											class: 'control-label';
											class: 'col-sm-3';
											with: [ 
												html text: 'Date :'.
											].
										html div 
											class: 'col-sm-3';
											with: [ 	
												html textInput 
													id: 'target-date';
													class: 'form-control';
													attributeAt: 'autocomplete' put: 'off';
													placeholder: 'Start Date';
													on: #targetDate of: self.
											].
										html div 
											class: 'col-sm-7'.
									].		
							html div 
								class: 'form-group';
								with: [ 		
									html label
										class: 'control-label';
										class: 'col-sm-3';
										with: [ 
											html text: 'Priority :'.
										].
									html div 
										class: 'col-sm-2';
										with: [ 	
											html select 
												class: 'form-control';
												size: 3;	
												list: self taskPriorities;
												selected: ( self taskPriorities at: 1);
												callback: [ :value | self priority: value asString ].	
										].
								].
							html div 
								class: 'form-group';
								with: [ 		
									html label
										class: 'control-label';
										class: 'col-sm-3';
										with: [ 
											html text: 'Add to Backlog :'.
										].
									html div 
										class: 'col-sm-2';
										with: [ 	
											html select 
												class: 'form-control';
												size: 2;	
												list: self addToBacklog;
												selected: ( self addToBacklog at: 1);
												callback: [ :value | self backlog: value asString ].	
										].
								].
							html div 
								class: 'form-group';
								with: [ 
									html div
										class: 'col-md-offset-3 col-md-6';
										with: [ 
											html anchor 
												class: 'btn btn-primary login-button'; 
												onClick: ( ( html jQuery ajax )
													serializeForm;
													script: [ :s | 
														validTaskInput := self validateAddTask.
														( validTaskInput = '' )
															ifTrue: [ 
																s << ( ( s jQuery class: 'task-entry-block' ) remove ).   
																s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ).   
															]
															ifFalse: [  
																self messageComponent messageString: validTaskInput. 
																s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ). 
															]	
													]
												);
												with: 'Save'.
											html anchor 
												class: 'btn btn-default login-button'; 
												onClick: ( ( html jQuery ajax )
													script: [ :s | 
														self targetDate: ''. self description: ''. self priority: nil. self backlog: nil.
														s << ( ( s jQuery class: 'task-entry-block' ) remove ).   
														s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ).  
														s << ( ( s jQuery class: 'expand' ) removeClass: 'disabled' ).    
													]
												);
												with: 'Cancel'				
										]
								]. 		
						]  
				] 						
		]. 
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').select2({ minimumResultsForSearch: Infinity })' ) ) .
	html document addLoadScript: ( ( JSStream on: '$(''#target-date'').pickadate({ formatSubmit: ''yyyy-mm-dd'', hiddenName: true })' ) ) .
	