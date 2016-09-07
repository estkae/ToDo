accessing
hashPassword: aString

	^ aString
		ifEmpty: [ 0 ]
		ifNotEmpty: [ GRPharoPlatform current secureHashFor: aString ].