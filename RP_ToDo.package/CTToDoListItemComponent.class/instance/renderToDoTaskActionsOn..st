as yet unclassified
renderToDoTaskActionsOn: html

	html div 
		class: 'row';
		style: 'margin-top: 20px;';
		with: [ 
			html div 
				class: 'col s5';
				with: [ 
					( self task status ~= 'Completed' ) ifTrue: [ 
						html anchor 
							class: 'btn-floating tooltipped task-edit';
							style: 'margin-right:10px;';
							attributeAt: 'data-position' put: 'top';
							attributeAt: 'data-delay' put: '50';
							attributeAt: 'data-tooltip' put: 'Edit';
							"url: '#task-edit-modal', self task id;"	
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									self taskEditComponent: CTToDoListItemTaskEditComponent new.
									self taskEditComponent task: self task.
									s << ( ( s jQuery id: 'task-edit-modal-content' ) append: [ html render: self taskEditComponent ] ). 
									s << ( ( s jQuery id: 'top5-overlay' ) show ).
									s << ( ( s jQuery id: 'task-edit-modal' ) show ).
								]	
							);							
							with: [ 
								html italic 
									class: 'material-icons';
									with: 'edit'.
							].
					].
					
					( self task status = 'Active' ) ifTrue: [ 
						html anchor 
							class: 'btn-floating tooltipped task-complete';
							class: 'btn-floating task-complete';
							style: 'cursor:pointer;margin-right:10px;';
							attributeAt: 'data-position' put: 'top';
							attributeAt: 'data-delay' put: '50';
							attributeAt: 'data-tooltip' put: 'Completed';
							url: '#task-action-modal', self task id;
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									self taskActionComponent: CTToDoListItemTaskActionComponent new.	
									self taskActionComponent task: self task.
									self taskActionComponent taskAction: 'Completed'.
									self taskActionComponent messageComponent infoMessage: 'Complete this task. You will be able to view the task and its notes in the Completed Task list. No updates will be possible.'.
									s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Has this task been completed.' ). 
									s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Completed' ). 
									s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
									s << ( ( s jQuery id: 'top5-overlay' ) show ).
									s << ( ( s jQuery id: 'task-action-modal' ) show ).
								]	
							);							
							with: [ 
								html italic 
									class: 'material-icons';
									with: 'done'.
							].									
				
						html anchor 
							class: 'btn-floating tooltipped modal-trigger task-backlog';
							style: 'margin-right:10px;';
							attributeAt: 'data-position' put: 'top';
							attributeAt: 'data-delay' put: '50';
							attributeAt: 'data-tooltip' put: 'Backlog';
							url: '#task-action-modal', self task id;	
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									self taskActionComponent: CTToDoListItemTaskActionComponent new.	
									self taskActionComponent task: self task.
									self taskActionComponent taskAction: 'Backlog'.
									self taskActionComponent messageComponent infoMessage: 'Place this task in the Backlog.'.
									s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Move this task to the backlog.' ). 
									s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Backlog' ). 
									s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
									s << ( ( s jQuery id: 'top5-overlay' ) show ).
									s << ( ( s jQuery id: 'task-action-modal' ) show ).
								]	
							);					
							with: [ 
								html italic 
									class: 'material-icons';
									class: 'backlog-task-', self task id;
									with: 'trending_flat'.
							].
					].		
		
					html anchor 
						class: 'btn-floating tooltipped modal-trigger task-delete';
						style: 'margin-right:10px;';
						attributeAt: 'data-position' put: 'top';
						attributeAt: 'data-delay' put: '50';
						attributeAt: 'data-tooltip' put: 'Delete';
						url: '#task-action-modal', self task id;
						onClick: ( ( html jQuery ajax )
							script: [ :s | 
								self taskActionComponent: CTToDoListItemTaskActionComponent new.	
								self taskActionComponent task: self task.
								self taskActionComponent taskAction: 'Delete'.
								self taskActionComponent messageComponent infoMessage: 'Delete this task.'.
								s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Delete this task.' ). 
								s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Delete' ). 
								s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
								s << ( ( s jQuery id: 'top5-overlay' ) show ).
								s << ( ( s jQuery id: 'task-action-modal' ) show ).
							]	
						);									
						with: [ 
							html italic 
								class: 'material-icons';
								with: 'delete'.
						].
						
				].

			html div 
				class: 'col s9'.	
		].	

						