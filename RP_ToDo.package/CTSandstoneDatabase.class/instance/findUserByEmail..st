as yet unclassified
findUserByEmail: aString 

	^ CTUser find: [ :each | each email = aString ].
	