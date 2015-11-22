accessing
addTask

	"check if description is populated - only continue if okay"
	self description = ''
		ifTrue: [ ^ ''  ].
			
	self task: CTTask new.
	task taskDescription: self description.
 	self session database addTask: self task toUser: self session user.