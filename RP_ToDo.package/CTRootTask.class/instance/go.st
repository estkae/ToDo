running
go

	| loginAnswer user |
	loginAnswer := self call: CTLoginComponent new.
	loginAnswer = #registerUser
		ifTrue: [ user := self call: CTRegisterComponent new ]
		ifFalse: [ user := loginAnswer ].
	user ifNotNil: [ 
		self session login: user.
		self call: CTLoggedInComponent new.
	]