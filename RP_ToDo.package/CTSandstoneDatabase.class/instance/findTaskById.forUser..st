as yet unclassified
findTaskById: anId forUser: aUser

	| task |
	task := aUser tasks select: [ :each | each id = anId ].
	
	^ task.