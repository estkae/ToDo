as yet unclassified
doLogout
	 
	| url |
	url := '/RP_ToDo'.
	self user: nil.
	self unregister.
	self requestContext redirectTo: url.