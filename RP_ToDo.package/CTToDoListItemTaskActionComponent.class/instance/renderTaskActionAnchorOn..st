accessing
renderTaskActionAnchorOn: html

	| activeTasks taskHeader |
	 
	html anchor
		class: 'btn-large waves-effect task-action-button', self task id;
		style: 'margin-left:15px;';		
		onClick: ( ( html jQuery ajax )
			script: [ :s |
				s << ( ( s jQuery id: 'task-block', self task id ) remove ). 
				( self taskAction = 'Backlog' )
					ifTrue: [ 
						self task status: 'Backlog'. 
					].
				( self taskAction = 'Completed' )
					ifTrue: [ 
						self task status: 'Completed'. 
					].
				( self taskAction = 'Delete' )
					ifTrue: [ 
						self task status: 'Deleted'.
					].	
				self session database updateTaskStatus: self task forUser: self session user. 	
				activeTasks := self session user numberOfActiveTasks. 
				( activeTasks = 0 )
					ifTrue: [ 
						taskHeader := CTToDoListComponentHeaderEmpty new.
						s << ( ( s jQuery class: 'task-header' ) remove ). 
						s << ( ( s jQuery class: 'task-list' ) append: [ :r |  r render: taskHeader.  ] ).  
					].	
					s << ( ( s jQuery id: 'top5-overlay' ) hide ).
					s << ( ( s jQuery id: 'task-action-modal' ) hide ).
					s << ( ( s jQuery class: 'action-modal-content' ) remove ).										
			] 
		);				
		with: self taskAction. 