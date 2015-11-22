as yet unclassified
renderContentOn: html

	self wasShown ifTrue: [^ self].
	html div
		class: 'message';
		class: self messageType, 'Message';
		with: [
			html span
				class: 'messageSpan';  
				with: self messageString.
		].	
	self wasShown: true.