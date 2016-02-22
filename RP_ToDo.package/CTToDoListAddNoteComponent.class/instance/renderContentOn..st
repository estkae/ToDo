as yet unclassified
renderContentOn: html

	html form
		class: 'addNoteText'; 
		with: [  			
			html div
				with: [ 			
					html textArea 
						class: 'form-control';
						class: 'note-entry';
						rows: 3;
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						placeholder: 'Add a Note';
						callback: [ :value | self processDescriptionInput: value ].
				].

			html div	
				class: 'task-link';
				with: [	
					( html button )
						bePush;
  						class: 'btn';
						class: 'btn-primary';
						class: 'btn-addnote';							
						onClick: ( ( html jQuery ajax )
								serializeForm;
								script: [ :s | 
									self addNoteToTask: self task. 
                            					s << ( ( s jQuery id: 'note-data-', self task id ) append: [ :r | self renderNewNoteOn: r ] ).
     								];
								onComplete: ( 
									( ( ( ( html jQuery expression: ( JSStream on: 'event.target' ) ) closest: '.task-block' ) find: '.numberofnotes' ) load html: [ :r | self renderNumberOfNotesOn: r ] ),	
									( ( ( ( html jQuery expression: ( JSStream on: 'event.target' ) ) closest: '.task-data' ) find: '.no-notes' ) remove ),									
									( ( html jQuery class: #'note-input' ) hide ),									
									( ( html jQuery class: #'note-entry' ) value: '' )
								 )
						);
						with: 'Save'.											
					html button 
						bePush;
						class: 'btn';
						class: 'btn-default';
						class: 'btn';
						class: 'btn-cancelnote';
						onClick: 	( ( html jQuery class: #'note-entry' ) value: '' );
						with: 'Cancel'.																													
				].
		].
	
	html div 
		class: 'col-md-12';
		with: [ 
			html div 
				class: 'col-md-5'.
			html div 
				class: 'col-md-2';
				class: 'task-split'.
			html div 
				class: 'col-md-5'.	
		 ].