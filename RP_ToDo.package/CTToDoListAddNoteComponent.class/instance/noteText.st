accessing
noteText

	| myNumber |
	myNumber := ( self task ) numberOfNotes asString.
	^ '( ', myNumber, ' )'.