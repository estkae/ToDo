as yet unclassified
addTask: aTask toUser: aUser
	
	| time |
	time := DateAndTime new; now.
		
	aTask  id: time seconds asString.	
	aUser addTask: aTask.
	aUser save.
	^ aTask.