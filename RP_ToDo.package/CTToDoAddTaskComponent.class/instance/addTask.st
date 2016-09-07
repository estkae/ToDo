accessing
addTask
	
	| myTask |
			
	myTask := CTModelTask new.
	myTask taskDescription: self description.
	myTask deadline: self targetDate.
	myTask priority: self priority.
	myTask inBacklog: self backlog.
	
	"set status"
	( self backlog = 'Yes' )
		ifTrue: [ myTask status: 'Backlog' ]
		ifFalse: [ myTask status: 'Active'  ].
		
 	self session database addTask: myTask toUser: self session user.
	
	^ myTask.