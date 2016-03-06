accessing
processEmailInput: aValue
	"how can this be made generic ?"

	aValue 
		ifNil: [ nil ]
		ifNotNil: [ self email:  aValue ].