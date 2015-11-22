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
								class: 'col-md-1'.
							html div
								class: 'col-md-10';
								with: 'This task has no notes'.
							html div 
								class: 'col-md-1'.	
						]			
	 			]
				ifFalse: [ 	
					self task notes do: [ 
						:each | 
							noteEntry := CTToDoListItemNoteComponent new.
							noteEntry note: each.
							noteEntry parentTask: self task.
							html render: noteEntry.
					].		
				].
			].		
		
	"Add Note link / button with callback"	
	html div 
		class: 'row';
		with: [
			html div 
				class: 'col-md-1'.			
			html div
				class: 'col-md-10';
				class: 'note-action';
				with: [  	
					self task status = 'Active'
						ifTrue: [ 							
							html anchor	
								class: 'add-note';
								script: (
									html jQuery this
									on: 'click'
									do: ( 
										( ( ( ( html jQuery this ) closest: '.note-action' ) parent: '.row' ) next: '.row .note-input' ) show: 0.2 seconds )
								);
								with: [
									html span
										class: 'note-link';  
										with: 'Add Note'.											
								].													
						].											
				].
			html div 
				class: 'col-md-1'.
		].
	
	"ensure that this note component is initialised with the associated task"
	self noteComponent task: self task.
	
	html div 
		class: 'row';
		class: 'note-input';
		with: [ 
			html div
				class: 'col-md-1'.	
			html div 
				class: 'col-md-10';
				with: [ html render: self noteComponent  ].
			html div 
				class: 'col-md-1'.			
		].				