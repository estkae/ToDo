as yet unclassified
renderContentOn: html

	| currentTaskPriority priorityCounter taskPriorities validateResult |
	taskPriorities := #( High Medium Low ).
	
	"there must be a better way of doing this ..." 
	currentTaskPriority := taskPriorities detect: [ :each | ( each asString ) = self task priority  ].
	( ( currentTaskPriority asString ) = 'High' )
		ifTrue: [ priorityCounter := 1. self priority: 'High'  ]
		ifFalse: [
			( ( currentTaskPriority asString ) = 'Medium' )
				ifTrue: [ priorityCounter := 2. self priority: 'Medium' ]
				ifFalse: [ priorityCounter := 3. self priority: 'Low' ]  
		].
	
	html div 
		class: 'modal-content';
		with: [
			html heading level: 4; 
				with: [ 
					html span 
						style: 'border-bottom: 2px solid gray';
						with: 'Edit Task'
				].		
			html div 
				with: [  
					html div
						class: 'col s12'; 
						with: self messageComponent.
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
														on: #description of: self;
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
														on: #targetDate of: self;
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
														selected: ( taskPriorities at: priorityCounter ); 
														on: #priority of: self.		
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
												bePush;
												class: 'btn modal-action modal-close';
												style: 'margin-left:15px;';		
												onClick: ( ( html jQuery ajax )
													serializeForm;
													script: [ :s |
														validateResult := self validateEditTask. 
														( validateResult = '' )
															ifTrue: [ 
																self updateTask. 
																s << ( ( s jQuery class: 'description', self task id ) text: self description ). 
																s << ( ( s jQuery class: 'deadline', self task id ) text: self targetDate ). 
																s << ( ( s jQuery class: 'priority', self task id ) text: self priority ). 
															]
															ifFalse: [ 
																self messageComponent infoMessage: validateResult. 
																s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ).  
															].
													] 
												);				
												with: 'Update'.   
											html anchor 
												class: 'btn modal-action modal-close';
												style: 'margin-left:15px;';
												with: 'Cancel'													 
										]			
								]
						]	
				] 
		].	
				
	html document addLoadScript: ( ( JSStream on: '$(''.deadline-date'').pickadate({ formatSubmit: ''yyyy-mm-dd'', hiddenName: true })' ) ) .	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .