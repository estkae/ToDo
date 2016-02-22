as yet unclassified
renderTaskInputOn: html

	|  numberOfTasks |
	numberOfTasks := self session database numberOfActiveTasksForUser: self session user.
		
	html div 
		with: [ 
			numberOfTasks < 5
			ifTrue: [ 			
				html div	
					class: 'col-md-1';
					class: 'task-link';
					with: [											
						html anchor
							class: 'btn btn-primary btn-lg btn-top add-task-button';
							onClick: ( ( html jQuery ajax )
								script: [ :s |
									s << ( ( s jQuery class: 'task-data' ) hide: 0.4 seconds ).
									s << ( ( s jQuery id: 'task-entry' ) load html: [ :r | self renderAddTaskOn: r ] ).   
									s << ( ( s jQuery class: 'add-task-button' ) addClass: 'disabled' ).   
									s << ( ( s jQuery class: 'expand' ) addClass: 'disabled' ). 
									s << ( ( s jQuery: 'span.fa' ) removeClass: 'fa-minus'; addClass: 'fa-plus' ).  
								]
							);
							with: 'Add a New Task'.																														
					].					
				]
			ifFalse: [ 
				html div 
					class: 'col-md-9';
					with: [ 	
						html textInput 
							class: 'form-control';
							class: 'input-lg';
							class: 'task-input';
							attributeAt: 'disabled' put: 'disabled';	
							placeholder: 'Complete / Delete current tasks'
					].					
				].
			].	
