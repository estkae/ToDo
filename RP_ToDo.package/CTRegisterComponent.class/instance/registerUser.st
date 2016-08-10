initialization
registerUser
	
	|myPassword |
	self user email: self email.
	myPassword := self sha1 hashMessage: self password. 
	self user password: myPassword asInteger.
	self user userName: self userId.	
	self session database addUser: self user.
	
	self answer: self user.