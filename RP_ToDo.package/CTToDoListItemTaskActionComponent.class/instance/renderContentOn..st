rendering
renderContentOn: html

	| taskHeader activeTasks |
			
	html div 
		class: 'modal-content';
		with: [
			html div 
				class: 'row';
				with: [ 
					html heading level: 4; 
						with: [ 
							html span 
								class: 'task-action-text', self task id;
								style: 'border-bottom: 2px solid teal';
								with: 'Action'
						]
				].		
			html div 
				class: 'row';
				with: [  
					html div
						class: 'col s12'; 
						with: [
							html paragraph 
							style: 'font-size:22px;';
							with: [
								html span 
									style: 'border-bottom: 1px solid teal;';
									with: 'Task'.  
								html span 
									style: 'color: gray;';
									with: ' : ', self task taskDescription.  
							]		
						]
				].		
			html div 
				class: 'row';
				style: 'margin-top:45px;';
				with: [
					html anchor
						class: 'btn waves-effect modal-action modal-close task-action-button', self task id;
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
							] 
						);				
						with: self taskAction.   
					html anchor 
						class: 'btn waves-effect modal-action modal-close';
						style: 'margin-left:15px;';
						with: 'Cancel'													 
				]			
		].