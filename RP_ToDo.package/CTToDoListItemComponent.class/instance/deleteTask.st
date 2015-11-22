accessing
deleteTask

	self task status: 'Deleted'.
	self session database updateTaskStatus: self task forUser: self session user.  