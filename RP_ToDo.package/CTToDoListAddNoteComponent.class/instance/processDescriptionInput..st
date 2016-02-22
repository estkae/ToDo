accessing
processDescriptionInput: aValue
	"how can this be made generic ?"

	aValue 
		ifNil: [ nil ]
		ifNotNil: [ self noteString:  aValue ].