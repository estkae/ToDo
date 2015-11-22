as yet unclassified
saveImage

	Transcript show: 'saving image ... '; cr.
	self class writeMutex critical: [ self saveImageWithoutMonitor  ].
	Transcript show: 'saved image ... '; cr.