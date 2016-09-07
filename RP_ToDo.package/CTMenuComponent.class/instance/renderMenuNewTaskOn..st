as yet unclassified
renderMenuNewTaskOn: html

	html anchor 
		class: 'newtask tooltipped';
		style: 'text-decoration: none;cursor:pointer;margin-top:20px;';
		attributeAt: 'data-position' put: 'right';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'New Task';
		"if the task entry block is open then remove - should really check if it is visible first ... "
		onClick: ( ( html jQuery ajax )
			script: [ :s |
				( self session isLoggedIn )
					ifTrue: [ 
						s << ( ( s jQuery class: 'task-data' ) hide: 0.4 seconds ).
						s << ( ( s jQuery class: 'task-data-notes' ) hide: 0.2 seconds ).
						s << ( ( s jQuery id: 'task-entry' ) append: [ :r | r render: self taskAddComponent ] ).  
						s << ( ( s jQuery id: 'task-entry' ) slideDown: 0.4 seconds ).  
						s << ( ( s jQuery class: 'add-task-button' ) addClass: 'disabled' ).   
						s << ( ( s jQuery class: 'expand' ) addClass: 'expand-disabled' ).	
						s << ( ( s jQuery class: 'expand' ) removeClass: 'zoom-out' ).	
						s << ( ( s jQuery class: 'expand' ) addClass: 'zoom-in' ).	
						s << ( ( s jQuery class: 'task-notes-expand' ) text: 'zoom_in' ).	
					]
					ifFalse: [ Transcript show: 'Task Input - I am not logged in ...'; cr. ].									
			]
		);
		with: [  
			html italic 
				class: 'material-icons';
				style: 'font-size:4rem;color:#004d40;';
				with: 'comment' 
		].	