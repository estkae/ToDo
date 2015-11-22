initialization
initialize
	super initialize.	
	self navBarComponent: CTNavBarComponent new.
	self aboutComponent: CTAboutComponent new.
	self sha1: SHA1 new.
	
	self messageComponent infoMessage: 'Please enter your Email / Password.'.