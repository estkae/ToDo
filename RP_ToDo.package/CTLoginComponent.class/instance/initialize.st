initialization
initialize
	super initialize.	
	self sha1: SHA1 new.
	
	self messageComponent infoMessage: 'Please enter your Email / Password.'.