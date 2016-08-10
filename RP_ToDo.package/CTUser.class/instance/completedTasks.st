as yet unclassified
completedTasks

	| myCompletedTasks |

	myCompletedTasks := ( self tasks ) select: [ :each | each status = 'Completed' ].
	^ myCompletedTasks.