as yet unclassified
renderContentOn: html

	| backlogCount listItem |
	
	html div
		class: 'col-md-12';
		with: [  
			html div
				class: 'col-md-5'.
			html div 
				class: 'col-md-2 task-split'.
			html div 
				class: 'col-md-5'.		 
		].				
	
	html div 
		with: [
			html heading level: 3; 
			with: [
				html span 
					style: 'border-bottom: 2px solid lightblue;';
					with: 'Task Backlog'. 
				html span
					style: 'margin-left:25px;'; 
					with: [ 
						html anchor
							style: 'text-decoration:none;cursor:pointer;color:black;font-size:26px;';
							onClick: ( ( html jQuery ajax )
								script: [ :s | 
									s << ( ( s jQuery class: 'non-active-tasks' ) hide: 0.1 seconds ). 
								]	
							);
							with: [ 
								html span 	
									with: '( '.
								html span 
									style: 'border-bottom: 1px solid lightblue;';	
									with: 'Close'.
								html span 	
									with: ' )'.	
							]			 
					]	 
			].		
		].

	backlogCount := 0.
	self backlogItems isEmpty 
		ifTrue: [ 
			self header: CTToDoListComponentHeaderEmpty new.
			html render: header.
	 	]
		ifFalse: [
			self header: CTToDoListComponentHeader new.
			html render: header.	
					
			self backlogItems do: [ :each | 
				( each status = 'Backlog' )
				ifTrue: [ 
					listItem := CTToDoListItemComponent new.
					listItem task: each.
					html render: listItem.
				].	
			]
		].	