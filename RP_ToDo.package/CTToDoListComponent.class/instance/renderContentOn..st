as yet unclassified
renderContentOn: html

	"is this how smalltalk does and'd / or'd conditionals"

	| listItem activeCount completedCount |	
	activeCount := 0.
	completedCount := 0.
		
	self todoItems isEmpty 
		ifTrue: [ 
			self renderEmptyTodoListHeaderOn: html.
	 	]
		ifFalse: [
			self todoItems do: [  
				:each | each status = 'Active'
					ifTrue: [ activeCount := activeCount + 1 ]
					ifFalse: [ 
						each status = 'Completed'
						ifTrue: [ completedCount := completedCount + 1 ] 
					].
			]. 
			( activeCount + completedCount ) > 0
			ifTrue: [ 
				self renderTodoListHeaderOn: html.		
				self todoItems do: [ :each | 
					each status = 'Active' 
						ifTrue: [ 
							listItem := CTToDoListItemComponent new.
							listItem task: each.
							html render: listItem.
						]
						ifFalse: [
							each status = 'Completed'  
							ifTrue: [ 
								listItem := CTToDoListItemComponent new.
								listItem task: each.
								html render: listItem.
							]
						].
				].	
			].	
		].	