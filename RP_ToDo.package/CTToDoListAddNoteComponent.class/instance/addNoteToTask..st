as yet unclassified
addNoteToTask: aTask

	"check if noteString is populated - only contiue if okay"
	self noteString = ''
		ifTrue: [ ^ ''  ].
		
	"create note object"	
	self note: CTNote new.
	self note taskNote: self noteString.

	"update the db"
	self session database addNote: self note toTask: aTask forUser: self session user.

	"update the note component"
	self noteComponent note: self note. 
