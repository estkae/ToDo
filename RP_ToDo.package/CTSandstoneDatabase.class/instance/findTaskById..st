as yet unclassified
findTaskById: anId 

	| task |
	task := self session user tasks select: [ :each | each id = anId ].
	
	^ task.