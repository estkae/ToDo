as yet unclassified
numberOfActiveTasks

	| myTasks myActiveTasks |
	
	myTasks := self tasks.	
	myActiveTasks := ( myTasks ) select: [ :each | each status = 'Active' ].
	^ myActiveTasks size.