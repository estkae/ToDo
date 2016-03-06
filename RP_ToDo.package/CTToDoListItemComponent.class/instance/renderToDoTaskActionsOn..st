as yet unclassified
renderToDoTaskActionsOn: html

	| taskHeader activeTasks |
	
	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'col s1'.
			html div 
				class: 'col s5';
				with: [ 
					self task status = 'Active' ifTrue: [ 
						html anchor 
							"class: 'btn-floating tooltipped task-complete';"
							class: 'btn-floating task-complete';
							style: 'cursor:pointer;margin-right:10px;';
							attributeAt: 'data-position' put: 'top';
							attributeAt: 'data-delay' put: '50';
							attributeAt: 'data-tooltip' put: 'Completed';
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									self completeTask.
									s << ( ( s jQuery class: 'task-entry-block' ) remove ).
									s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ).  
									"s << ( ( s jQuery expression: ( JSStream on: '$(''.tooltipped'').tooltip(''remove'')' ) ) )."
									s << ( ( s jQuery id: 'task-block', self task id ) remove ).
									activeTasks := self session user numberOfActiveTasks. 
									( activeTasks = 0 )
										ifTrue: [ 
											taskHeader := CTToDoListComponentHeaderEmpty new.
											s << ( ( s jQuery class: 'task-header' ) remove ). 
											s << ( ( s jQuery class: 'task-list' ) append: [ :r |  r render: taskHeader.  ] ).  
										].
								]	
							);
							with: [ 
								html italic 
									class: 'material-icons';
									with: 'done'.
							]		
					].
		
					html anchor 
						"class: 'btn-floating tooltipped task-delete';"
						class: 'btn-floating task-delete';
						style: 'margin-right:10px;';
						attributeAt: 'data-position' put: 'top';
						attributeAt: 'data-delay' put: '50';
						attributeAt: 'data-tooltip' put: 'Delete';
						callback: [ self deleteTask ];					
						with: [ 
							html italic 
								class: 'material-icons';
								with: 'delete'.
						].
						
					html anchor 
						"class: 'btn-floating tooltipped task-delete';"
						class: 'btn-floating task-delete';
						style: 'margin-right:10px;';
						attributeAt: 'data-position' put: 'top';
						attributeAt: 'data-delay' put: '50';
						attributeAt: 'data-tooltip' put: 'Backlog';
						callback: [ self deleteTask ];					
						with: [ 
							html italic 
								class: 'material-icons';
								with: 'trending_flat'.
						].	
				].

			html div 
				class: 'col s9'.	
		].					