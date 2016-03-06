as yet unclassified
numberOfActiveTasksForUser: aUser

	| activeTasks |
	activeTasks := 0.
	aUser tasks do: [ :each | 
			each status = 'Active'
				ifTrue: [ activeTasks := activeTasks + 1 ]
		 ].
	^ activeTasks.
