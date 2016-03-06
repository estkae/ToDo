accessing
addTask
			
	self task: CTTask new.
	task taskDescription: self description.
	task deadline: self targetDate.
	task priority: self priority.
	task inBacklog: self addToBacklog.
 	self session database addTask: self task toUser: self session user.