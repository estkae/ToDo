as yet unclassified
addNote: aNote toTask: aTask forUser: aUser
	
	| tasks |
	
	"find the task that I want to add a note too"
	tasks := aUser tasks select: [ :each | each  id = aTask id ].	
		
	( tasks at: 1 ) notes add: aNote.

	"save the updated user data"
	aUser save.
	^aUser.	
