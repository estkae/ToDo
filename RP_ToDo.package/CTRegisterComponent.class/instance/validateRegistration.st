accessing
validateRegistration

	| myUser |
	
	self userId isEmptyOrNil 
		ifTrue: [ ^ self messageComponent errorMessage: 'A User Id needs to be entered'   ].
	self email isEmptyOrNil 
		ifTrue: [ ^ self messageComponent errorMessage: 'An Email address needs to be entered'   ].
		
	myUser := self session findUserByEmail: self email.
	( myUser notNil )
		ifTrue: [ ^ self messageComponent errorMessage: 'A user with this email already exists' ].
		
	self password size = 0 
		ifTrue: [ ^ self messageComponent errorMessage: 'A Password needs to be entered'   ].
	self password size < 8 
		ifTrue: [ ^ self messageComponent errorMessage: 'A Password needs to be at least 8 characters in length'   ].
	self repeatPassword size = 0 
		ifTrue: [ ^ self messageComponent errorMessage: 'The Password needs to be repeated'   ].		
	self repeatPassword = self password  
		ifFalse: [ ^ self messageComponent errorMessage: 'The Password entries differ - please correct.'   ].	
	
	"assume valid details at this point"	
	^ self registerUser.