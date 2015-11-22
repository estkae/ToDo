as yet unclassified
addTask: aTask toUser: aUser
	
	aUser addTask: aTask.
	"self saveImage."
	^ aTask.