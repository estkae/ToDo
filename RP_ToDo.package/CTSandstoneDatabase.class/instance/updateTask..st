as yet unclassified
updateTask: aTask

	| user |
	user := CTUser find: [ :each | each tasks includes: aTask ].
	user save.
	