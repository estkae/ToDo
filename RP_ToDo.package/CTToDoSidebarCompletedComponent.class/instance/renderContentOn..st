as yet unclassified
renderContentOn: html

	| completedCount listItem |
	
	completedCount := 0.
	( self completedItems isEmpty )
		ifFalse: [	
			html div
				class: 'sidebar-items';
				with: [ 
					html heading level: 3;
						with: [ html span style: 'border-bottom: 3px solid teal;'; with: 'COMPLETED' ].				
					self completedItems do: [ :each | 
						( each status = 'Completed' )
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
						with: [ html span style: 'border-bottom: 3px solid teal;'; with: 'No Completed Tasks' ].
				]		
		].