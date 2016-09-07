initialization
initialize
	super initialize.
	
	self user: CTModelUser new.
	self sha1: SHA1 new.
	
	self messageComponent infoMessage: 'Please enter all the registration details.'.	