as yet unclassified
initialize

	super initialize.
	self listComponent: CTToDoListComponent new. 
	self backlogComponent: CTToDoBacklogComponent new. 
	self messageComponent: CTToDoMessageComponent new. 