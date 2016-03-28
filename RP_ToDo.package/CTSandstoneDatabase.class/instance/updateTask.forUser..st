as yet unclassified
updateTask: aTask forUser: aUser
	
	| tasks |
	
	"find the task that I want to update"
	tasks := aUser tasks select: [ :each | each  id = aTask id ].	
		
	( tasks at: 1 ) taskDescription: aTask taskDescription.
	( tasks at: 1 ) deadline: aTask deadline.
	( tasks at: 1 ) priority: aTask priority.

	"save the updated user data"
	aUser save.
	^aUser.		