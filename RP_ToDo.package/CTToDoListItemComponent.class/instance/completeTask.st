accessing
completeTask

	self task status: 'Completed'.
	self session database updateTaskStatus: self task forUser: self session user.  