initialization
initialize
	super initialize.
	
	self user: CTUser new.
	self navBarComponent: CTNavBarComponent new.
	self aboutComponent: CTAboutComponent new.	
	self messageComponent: CTMessageComponent new.
	self sha1: SHA1 new.
	
	self messageComponent infoMessage: 'Please enter all the registration details.'.	