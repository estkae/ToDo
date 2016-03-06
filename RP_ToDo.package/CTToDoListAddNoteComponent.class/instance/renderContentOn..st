as yet unclassified
renderContentOn: html

	html form
		class: 'addNoteText'; 
		style: 'margin-bottom:20px';
		with: [  			
			html div
				class: 'input-field col s12';
				style: 'margin-top:0px';
				with: [ 			
					html textArea 
						class: 'materialize-textarea note-entry';
						style: 'padding-top:10px;';
						rows: 3;
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						placeholder: 'Add a Note';
						callback: [ :value | self processNoteInput: value ].
				].

			html div	
				class: 'task-link';
				with: [	
					( html button )
						bePush;
  						class: 'btn-large waves-effect waves-light'; 
						class: 'btn-addnote';
						style: 'margin-left: 12px;';							
						onClick: ( ( html jQuery ajax )
								serializeForm;
								script: [ :s | 
									self addNoteToTask: self task. 
                         					s << ( ( s jQuery id: 'note-data-', self task id ) append: [ :r | self renderNewNoteOn: r ] ).
     							];
							onComplete: ( 
								( ( ( html jQuery id: 'task-block', self task id ) find: '.numberofnotes' ) load html: [ :r | self renderNumberOfNotesOn: r ] ),	
								( ( ( ( html jQuery expression: ( JSStream on: 'event.target' ) ) closest: '.task-data', self task id ) find: '.no-notes' ) remove ),									
								( ( html jQuery class: #'note-input' ) hide ),									
								( ( html jQuery class: #'note-entry' ) value: '' )
							 )
						);
						with: 'Save'.											
					html button 
						bePush;
						class: 'btn btn-large waves-effect waves-light'; 
						class: 'btn-cancelnote';
						style: 'margin-left: 12px;';
						onClick: 	( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery class: #'note-entry' ) value: '' ).
								s << ( ( s jQuery class: 'note-input' ) hide: 0.2 seconds ).
							]	
						);
						with: 'Cancel'.																													
				].
		].
	
"	html div 
		class: 'col s12';
		with: [ 
			html div 
				class: 'col s5'.
			html div 
				class: 'col s2';
				class: 'task-split'.
			html div 
				class: 'col s5'.	
		 ]."