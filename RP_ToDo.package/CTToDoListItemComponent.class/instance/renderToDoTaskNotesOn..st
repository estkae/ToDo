as yet unclassified
renderToDoTaskNotesOn: html
	"need to list task notes here"

	| noteEntry |
	
	html div 
		id: 'note-data-', self task id;
		with: [ 
			self task notes isEmpty 
				ifTrue: [ 
					html div 
						class: 'row';
						class: 'no-notes';
						with: [ 
							html div
								class: 'col s10';
								with: 'This task has no notes'.
							html div 
								class: 'col s1'.	
						]			
	 			]
				ifFalse: [ 	
					self task notes do: [ 
						:each | 
							noteEntry := CTToDoListItemNoteComponent new.
							noteEntry note: each.
							html render: noteEntry.
					].		
				].
			].		
		
	"Add Note link / button with callback - only for tasks that are not 'completed'"	
	( self task status = 'Completed' )
		ifFalse: [	
			html div 
				class: 'row';
				style: 'margin-bottom:5px;';
				with: [		
					html div
						class: 'col s10 note-action';
						with: [  					
							html anchor	
								class: 'add-note';
								style: 'cursor:pointer';
								onClick: ( ( html jQuery ajax )
									script: [ :s |
										s << ( ( s jQuery class: 'task-action', self task id ) hide: 0.1 seconds ).								
										s << ( ( s jQuery class: 'note-input', self task id ) show: 0.2 seconds ).																
									]
								);	
								with: [
									html span
										class: 'note-link';  
										style: 'border-bottom:1px solid lightblue;';
										with: 'Add Note'.											
								].																							
						].
					html div 
						class: 'col s1'.
				]
		].
	
	"ensure that this note component is initialised with the associated task"
	self noteComponent task: self task.
	
	html div 
		class: 'row note-input note-input', self task id;
		style: 'display:none';
		with: [ 
			html div 
				class: 'col s12';
				with: [ html render: self noteComponent  ].
			html div 
				class: 'col s1'.			
		].		
			
	html div
		class: 'task-action task-action', self task id;
		with: [ self  renderToDoTaskActionsOn: html. ]. 				