accessing
doLogout
	 
	| url |
	url := '/Top-5'.
	self user: nil.
	self unregister.
	self requestContext redirectTo: url.