as yet unclassified
addTask: aTask toUser: aUser
	
	| time |
	time := DateAndTime new; now.
		
	aTask  id: time asSeconds asString.	
	aUser addTask: aTask.
	aUser save.
	^ aTask.