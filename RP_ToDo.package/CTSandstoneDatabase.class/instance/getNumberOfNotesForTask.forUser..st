as yet unclassified
getNumberOfNotesForTask: anId forUser: aUser	
	
	| myTasks myTask |
	"find the task that I want to get the notes count for"
	myTasks := aUser tasks select: [ :each | each id = anId ].	
	"( tasks at: 1 ) notes add: aNote."
