as yet unclassified
updateTaskStatus: aTask forUser: aUser
	
	"not sure I need to pass task"
	aUser save.
	^ aTask.