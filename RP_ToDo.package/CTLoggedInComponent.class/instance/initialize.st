initialization
initialize
	super initialize.
	self 
		navBarComponent: CTNavBarComponent new;
		aboutComponent: CTAboutComponent new;
		bodyComponent: CTToDoComponent new.