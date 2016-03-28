accessing
updateTask
	
	self task taskDescription: self description.
	self task deadline: self targetDate.
	self task priority: self priority.
		
 	self session database updateTask: self task forUser: self session user.
	
	^ self task.