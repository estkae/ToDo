as yet unclassified
renderContentOn: html

	"is this how smalltalk does and'd / or'd conditionals"

	| listItem activeCount |	
	activeCount := 0.

	self todoItems isEmpty 
		ifTrue: [ 
			self header: CTToDoListComponentHeaderEmpty new.
			html render: header.
	 	]
		ifFalse: [
			self header: CTToDoListComponentHeader new.
			html render: header.	
					
			self todoItems do: [ :each | 
				"render active items - should only be 5"
				( each status = 'Active' )
				ifTrue: [ 
					listItem := CTToDoListItemComponent new.
					listItem task: each.
					html render: listItem.
				].	
			]
		].	