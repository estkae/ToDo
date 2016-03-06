accessing
addTask
	
	| myTask |
			
	myTask := CTTask new.
	myTask taskDescription: self description.
	myTask deadline: self targetDate.
	myTask priority: self priority.
	myTask inBacklog: self backlog.
 	self session database addTask: myTask toUser: self session user.
	
	^ myTask.