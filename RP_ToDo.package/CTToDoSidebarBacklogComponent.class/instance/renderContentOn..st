as yet unclassified
renderContentOn: html

	| backlogCount listItem |
	
	backlogCount := 0.
	( self backlogItems isEmpty )
		ifFalse: [	
			html div
				class: 'sidebar-items';
				with: [ 
					html heading level: 3;
						with: [ html span style: 'border-bottom: 3px solid teal;'; with: 'BACKLOG' ].				
					self backlogItems do: [ :each | 
						( each status = 'Backlog' )
							ifTrue: [ 
								listItem := CTToDoListItemComponent new.
								listItem task: each.
								html render: listItem.
							].
					]	
				]
		]
		ifTrue: [ 
			html div
				class: 'sidebar-items';
				with: [ 
					html heading level: 4;
						with: [ html span style: 'border-bottom: 3px solid teal;'; with: 'No Backlog Tasks' ].
				]		
		].	  	