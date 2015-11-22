accessing
processInput: aValue
	"how can this be made generic ?"
	
	aValue 
		ifNil: [ nil ]
		ifNotNil: [ self description:  aValue ].
	