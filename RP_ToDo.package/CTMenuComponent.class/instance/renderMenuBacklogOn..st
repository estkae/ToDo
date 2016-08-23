as yet unclassified
renderMenuBacklogOn: html

	| backlogComponent |
	
	html anchor 
		class: 'backlog tooltipped cd-btn';
		style: 'text-decoration: none;cursor:pointer;margin-top:20px;';
		attributeAt: 'data-position' put: 'right';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Backlog';
		"if the task entry block is open then remove - should really check if it is visible first ... "
		onClick: ( ( html jQuery ajax )
				script: [ :s | 
					"append the backlog items"
					backlogComponent := CTToDoSidebarBacklogComponent new.
					s << ( ( s jQuery id: 'full-content' ) append: [ html render: backlogComponent] ).
					"remove the task entry form"
					s << ( ( s jQuery id: 'task-entry' ) hide: 0.1 seconds ).
					"hide the task data"
					s << ( ( s jQuery class: 'task-data' ) hide: 0.4 seconds ).
					s << ( ( s jQuery class: 'note-input' ) hide: 0.2 seconds ).
					s << ( ( s jQuery class: 'task-action' ) show ).
					s << ( ( s jQuery class: 'task-data-notes' ) hide: 0.2 seconds ).  
					s << ( ( s jQuery class: 'add-task-button' ) removeClass: 'disabled' ).  
					"reset zoom-* icons"
					s << ( ( s jQuery class: 'expand' ) removeClass: 'expand-disabled' ). 
					s << ( ( s jQuery class: 'expand' ) removeClass: 'zoom-out' ).	
					s << ( ( s jQuery class: 'expand' ) addClass: 'zoom-in' ).	
					s << ( ( s jQuery class: 'task-notes-expand' ) text: 'zoom_in' ).   
				]
			);
		with: [  
			html italic 
				class: 'material-icons';
				style: 'font-size:4rem;color:#004d40;';
				with: 'storage' 
		].	