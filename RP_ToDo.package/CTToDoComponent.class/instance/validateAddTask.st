accessing
validateAddTask

	| myDate |

	"check if task data is populated - only continue if okay"
	self description = ''
		ifTrue: [ ^ 'MIssing data : please enter a Description field please.'  ].
	self targetDate = ''
		ifTrue: [ ^ 'MIssing data : please enter a Date field please.' ].	
	self priority = nil
		ifTrue: [ ^ 'MIssing data : please enter a Priority field please.' ].	
			
	"check that the date is in the future"			
	myDate := Date today yyyymmdd.
	( targetDate < myDate ) ifTrue: [ ^ 'Error : the Date must be in the future.' ].
				
	^ ''.