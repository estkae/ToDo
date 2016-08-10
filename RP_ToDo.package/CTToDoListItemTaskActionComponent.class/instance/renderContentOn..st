rendering
renderContentOn: html

	| taskHeader activeTasks |
			
	html div 
		class: 'action-modal-content';
		with: [
			html div 
				class: 'row';
				with: [ 
					html heading level: 4; 
						with: [ 
							html span 
								id: 'task-action-text';
								style: 'border-bottom: 2px solid teal';
								with: 'Task - ', self taskAction
						]
				].	
			html div
				class: 'col s12'; 
				with: self messageComponent.		
			html div 
				class: 'row';
				with: [  
					html div
						class: 'col s12'; 
						with: [
							html paragraph 
							style: 'text-align:left;';
							with: [
								html span 
									style: 'font-size:22px;border-bottom: 1px solid teal;';
									with: 'Task'.  
								html span 
									style: 'font-size:20px;color: gray;font-weight:300;';
									with: ' : ', self task taskDescription.  
							]		
						]
				].		
			html div 
				class: 'row';
				style: 'margin-top:45px;text-align:left;';
				with: [
					html anchor
						class: 'btn-large waves-effect task-action-button', self task id;
						style: 'margin-left:15px;';		
						onClick: ( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery id: 'task-block', self task id ) remove ). 
								( self taskAction = 'Backlog' )
									ifTrue: [ 
										self task status: 'Backlog'. 
									].
								( self taskAction = 'Completed' )
									ifTrue: [ 
										self task status: 'Completed'. 
									].
								( self taskAction = 'Delete' )
									ifTrue: [ 
										self task status: 'Deleted'.
									].	
								self session database updateTaskStatus: self task forUser: self session user. 	
								activeTasks := self session user numberOfActiveTasks. 
									( activeTasks = 0 )
										ifTrue: [ 
											taskHeader := CTToDoListComponentHeaderEmpty new.
											s << ( ( s jQuery class: 'task-header' ) remove ). 
											s << ( ( s jQuery class: 'task-list' ) append: [ :r |  r render: taskHeader.  ] ).  
										].	
								s << ( ( s jQuery id: 'top5-overlay' ) hide ).
								s << ( ( s jQuery id: 'task-action-modal' ) hide ).
								s << ( ( s jQuery class: 'action-modal-content' ) remove ).										
							] 
						);				
						with: self taskAction.   
					html anchor 
						class: 'btn-large waves-effect';
						style: 'margin-left:15px;';
						onClick: ( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery id: 'top5-overlay' ) hide ).
								s << ( ( s jQuery id: 'task-action-modal' ) hide ).
								s << ( ( s jQuery class: 'action-modal-content' ) remove ).
							]
						);	
						with: 'Cancel'													 
				]			
		].