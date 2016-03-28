initialization
initialize

	| expiredStatus myUri |
	
	super initialize.	
	self sha1: SHA1 new.

	myUri := ( self requestContext request ) uri asString.
	expiredStatus := myUri findString: 'expired'.
	( expiredStatus > 0 )
		ifTrue: [
			self messageComponent infoMessage: 'Your session has expired. Please login.'.  
		]
		ifFalse: [  
			self messageComponent infoMessage: 'Please enter your Email / Password.'.
		].
	