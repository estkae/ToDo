initialization
registerUser
		
	self user email: self email.
	self user password: self password.
	self user userName: self userId.
	
	self session database addUser: self user.
	
	self answer: self user.