as yet unclassified
renderContentOn: html

	html form
		class: 'addNoteText'; 
		style: 'margin-bottom:20px; border:3px solid lightgray;border-radius:5px;background-color:#f5f5f5;';
		with: [  			
			html div
				class: 'input-field col s12';
				style: 'margin-top:0px';
				with: [ 			
					html textArea 
						class: 'materialize-textarea note-entry';
						style: 'padding-top:10px;';
						rows: 5;
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						placeholder: 'Add a Note';
						callback: [ :value | self processNoteInput: value ].
				].

			html div	
				class: 'task-link';
				style: 'margin-bottom:20px;';
				with: [	
					( html button )
						bePush;
  						class: 'btn waves-effect waves-light'; 
						class: 'btn-addnote';
						style: 'margin-left: 12px;';							
						onClick: ( ( html jQuery ajax )
								serializeForm;
								script: [ :s | 
									self addNoteToTask: self task.                          	
									s << ( ( ( s jQuery id: 'task-block', self task id ) find: '.numberofnotes' ) load html: [ :r | self renderNumberOfNotesOn: r ] ).
									s << ( ( s jQuery class: 'no-notes' ) remove ).
									s << ( ( s jQuery id: 'note-data-', self task id ) append: [ :r | self renderNewNoteOn: r ] ).
									s << ( ( s jQuery class: 'note-input', self task id ) hide: 0.2 seconds ).	
									s << ( ( s jQuery class: 'note-entry' ) value: '' ).	
									s << ( ( s jQuery class: 'task-action', self task id ) show ).	
     							]
						);
						with: 'Save'.											
					html button 
						bePush;
						class: 'btn waves-effect waves-light'; 
						class: 'btn-cancelnote';
						style: 'margin-left: 12px;';
						onClick: 	( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery class: #'note-entry' ) value: '' ).
								s << ( ( s jQuery class: 'note-input', self task id ) hide: 0.2 seconds ).
								s << ( ( s jQuery class: 'task-action', self task id ) show ).
							]	
						);
						with: 'Cancel'.																													
				].
		].