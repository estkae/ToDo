as yet unclassified
addNote: aNote toTask: aTask forUser: aUser
	
	| myTask |
	
	"find the task that I want to add a note too"
	myTask := aUser tasks select: [ :each | each  id = aTask id ].	
		
	( myTask at: 1 ) notes add: aNote.

	"save the updated user data"
	aUser save.
	^aUser.	
