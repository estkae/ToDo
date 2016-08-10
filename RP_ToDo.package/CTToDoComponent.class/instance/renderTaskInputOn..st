as yet unclassified
renderTaskInputOn: html

	html div 
		with: [ 
			html div	
				class: 'task-link';
				with: [											
					html anchor
						class: 'btn-large add-task-button';
						style: 'text-decoration:none;';
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
						with: 'Add a New Task'.																														
				].									
		].	

	html document addLoadScript: (html jQuery document onAjaxError: (self ajaxErrorHandler asFunction: #('event' 'jqxhr' 'settings' 'exception')))
