as yet unclassified
renderToDoTaskActionsOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s5';
				with: [ 
					self task status = 'Active' ifTrue: [ 
						html anchor 
						class: 'btn-floating tooltipped modal-trigger task-edit';
						style: 'margin-right:10px;';
						attributeAt: 'data-position' put: 'top';
						attributeAt: 'data-delay' put: '50';
						attributeAt: 'data-tooltip' put: 'Edit';
						url: '#task-edit-modal', self task id;						
						with: [ 
							html italic 
								class: 'material-icons';
								with: 'edit'.
						].
					
						html anchor 
							class: 'btn-floating tooltipped modal-trigger task-complete';
							class: 'btn-floating task-complete';
							style: 'cursor:pointer;margin-right:10px;';
							attributeAt: 'data-position' put: 'top';
							attributeAt: 'data-delay' put: '50';
							attributeAt: 'data-tooltip' put: 'Completed';
							url: '#task-action-modal', self task id;
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									self taskActionComponent taskAction: 'Completed'.
									s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Has this task been completed.' ). 
									s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Completed' ). 
								]	
							);							
							with: [ 
								html italic 
									class: 'material-icons';
									with: 'done'.
							]		
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
								self taskActionComponent taskAction: 'Backlog'.
								s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Move this task to the backlog' ). 
								s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Backlog' ). 
							]	
						);					
						with: [ 
							html italic 
								class: 'material-icons';
								class: 'backlog-task-', self task id;
								with: 'trending_flat'.
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
								self taskActionComponent taskAction: 'Delete'.
								s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Delete this task' ). 
								s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Delete' ). 
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

	html document addLoadScript: ( ( JSStream on: '$(''.modal-trigger'').leanModal({ dismissible: true, in_duration: 0, out_duration: 50, opacity: .3, complete: function() { $(''.lean-overlay'').remove() }  })' ) ) .	 						