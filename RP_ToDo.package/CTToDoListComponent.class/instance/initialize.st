accessing
initialize

	super initialize.
	self todoItems: self session user tasks. 