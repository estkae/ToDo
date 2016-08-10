as yet unclassified
initialize

	super initialize.
	self listComponent: CTToDoListComponent new. 
	self sidebarComponent: CTToDoSidebarComponent new.
	self messageComponent:  CTMessageComponent new.
	self taskAddComponent:  CTToDoAddTaskComponent new.	 		 							