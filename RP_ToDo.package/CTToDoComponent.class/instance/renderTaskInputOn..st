as yet unclassified
renderTaskInputOn: html

	|  numberOfTasks |
	numberOfTasks := self session database numberOfActiveTasksForUser: self session user.
		
	html form: [  
		html div 
			with: [ 
				numberOfTasks < 5
				ifTrue: [ 			
					html div 
						class: 'col-md-9';
						with: [ 	
							html textInput 
								class: 'form-control';
								class: 'input-lg';
								class: 'task-input';
								autofocus;
								attributeAt: 'autocomplete' put: 'off';	
								placeholder: 'What do you want to do ?';
								callback: [ :value | self processInput: value ].
						].
					html div	
						class: 'col-md-1';
						class: 'task-link';
						with: [											
							html submitButton 
								callback: [ self addTask ];
								class: 'btn';
								class: 'btn-primary';
								class: 'btn-lg';
								class: 'btn-top';
								with: 'Save'.																														
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
	].