as yet unclassified
expiryPathFor: aRequest
	self halt.
	^aRequest url , '?expired'