initialization
validateLogin

	| user myPassword |

	user := self session database findUserByEmail: self email.
	myPassword := self password.

	( user notNil and: [ user password = myPassword ] )
		ifTrue: [ self answer: user ]
		ifFalse: [ self loginFailed ].