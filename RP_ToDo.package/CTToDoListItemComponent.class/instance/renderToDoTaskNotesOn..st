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
		
	"Add Note link / button with callback"	
	html div 
		class: 'row';
		style: 'margin-bottom:5px;';
		with: [		
			html div
				class: 'col s10 note-action';
				style: 'margin-bottom:20px;';
				with: [  					
					html anchor	
						class: 'add-note';
						style: 'cursor:pointer';
						script: (
							html jQuery this
							on: 'click'
							do: ( 
								( ( ( ( html jQuery this ) closest: '.note-action' ) parent: '.row' ) next: '.row .note-input' ) show: 0.2 seconds )
						);
						with: [
							html span
								class: 'note-link';  
								style: 'margin-bottom:20px';
								with: 'Add Note'.											
						].																							
				].
			html div 
				class: 'col s1'.
		].
	
	"ensure that this note component is initialised with the associated task"
	self noteComponent task: self task.
	
	html div 
		class: 'row note-input';
		style: 'display:none';
		with: [ 
			html div 
				class: 'col s10';
				with: [ html render: self noteComponent  ].
			html div 
				class: 'col s1'.			
		].		
			
	html div
		class: 'task-action';
		with: [ self  renderToDoTaskActionsOn: html. ]. 				