accessing
validateAddTask

	| myDate |

	"check if task data is populated - only continue if okay"
	self description = ''
		ifTrue: [ ^ 'Missing data : please enter a Description field.'  ].
	self targetDate = ''
		ifTrue: [ ^ 'Missing data : please enter a Date field.' ].	
	self priority = nil
		ifTrue: [ ^ 'Missing data : please enter a Priority field.' ].	
			
	"check that the date is in the future"			
	myDate := Date today yyyymmdd.
	( targetDate < myDate ) ifTrue: [ ^ 'Error : the Date must be in the future.' ].
				
	^ ''.