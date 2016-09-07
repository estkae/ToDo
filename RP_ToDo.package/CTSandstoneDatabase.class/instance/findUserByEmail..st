as yet unclassified
findUserByEmail: aString 

	^ CTModelUser find: [ :each | each email = aString ].
	