accessing
renderEditTaskButtonsOn: html

	| myCurrentDate validateResult |
	
	myCurrentDate := Date new; today.
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s12';
				style: 'margin-top:35px;text-align:left;';
				with: [
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light';
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
										( ( myCurrentDate yyyymmdd ) <= self targetDate )
											ifTrue: [ 
												s << ( ( s jQuery class: 'task-details', self task id ) removeClass: 'red teal lighten-4 lighten-5' ). 
												s << ( ( s jQuery class: 'task-details', self task id ) addClass: 'teal lighten-5' ). 
											].
										s << ( ( s jQuery class: 'priority', self task id ) text: self priority ). 
										s << ( ( s jQuery class: 'task-panel' ) removeClass: 'is-visible' ). 
										s << ( ( s jQuery id: 'top5-overlay' ) hide ).
										s << ( ( s jQuery id: 'task-edit-modal' ) hide ).
										s << ( ( s jQuery class: 'edit-modal-content' ) remove ).
									]
									ifFalse: [ 
										self messageComponent infoMessage: validateResult. 
										s << ( ( s jQuery class: 'message' ) load html: [ :r | r render: self messageComponent ] ).  
									].
							] 
						);				
						with: 'Update'.   
					html button 
						bePush;
						class: 'btn-large waves-effect waves-light';
						style: 'margin-left:15px;';
						onClick: ( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery id: 'top5-overlay' ) hide ).
								s << ( ( s jQuery id: 'task-edit-modal' ) hide ).
								s << ( ( s jQuery class: 'edit-modal-content' ) remove ).
							]
						);	
						with: 'Cancel'													 
				]
		].						