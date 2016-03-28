accessing
renderAddTaskButtonsOn: html

	| validTaskInput taskItemComponent taskHeader myTask | 
	
	html div 
		with: [ 
			html div
				class: 'col s6';
				with: [ 
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						onClick: ( ( html jQuery ajax )
							serializeForm;
							script: [ :s | 
								validTaskInput := self validateAddTask.
								( validTaskInput = '' )
									ifTrue: [ 
										( self session user numberOfActiveTasks > 0 )
											ifFalse: [ 
												taskHeader := CTToDoListComponentHeader new.
												s << ( ( s jQuery class: 'task-header' ) remove ). 
												s << ( ( s jQuery class: 'task-list' ) append: [ :r | r render: taskHeader ] ).  
											].
										myTask := self addTask.	
										taskItemComponent := CTToDoListItemComponent new.
										taskItemComponent task: myTask.
										"only append if not being added to the task backlog"
										( self backlog = 'No' )
											ifTrue: [ 
												s << ( ( s jQuery class: 'task-list' ) append: [ :r | r render: taskItemComponent ] )
											].	
										s << ( ( s jQuery class: 'task-entry-block' ) remove ).   
										s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ). 
										s << ( ( s jQuery class: 'expand' ) removeClass: 'expand-disabled' ). 
										self description: ''. self targetDate: ''. self priority: 'High'. self backlog: 'No'.
									]
									ifFalse: [  
										self messageComponent infoMessage: validTaskInput. 
										s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ). 
								]	
							]
							);
						with: 'Save'.
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light'; 
						style: 'margin-left: 12px;';
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								self targetDate: ''. self description: ''. self priority: nil. self backlog: nil.
								s << ( ( s jQuery class: 'task-entry-block' ) hide: 0.5 seconds ). 
								s << ( ( s jQuery class: 'task-entry-block' ) remove ).   
								s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ).  
								s << ( ( s jQuery class: 'expand' ) removeClass: 'expand-disabled' ).    
							]
						);
						with: 'Cancel'.				
				]	
			].	