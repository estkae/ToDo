initialization
validateLogin

	| user myPassword |

	user := self session findUserByEmail: self email.
	myPassword :=  sha1 hashMessage: self password.

	( user notNil and: [ user password = myPassword asString ] )
		ifTrue: [ self answer: user ]
		ifFalse: [ self loginFailed ].