accessing
renderAddTaskDateOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s4';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'schedule'.
					html textInput 
						class: 'datepicker';
						id: 'target-date';
						attributeAt: 'type' put: 'date';
						attributeAt: 'autocomplete' put: 'off';
						on: #targetDate of: self.				
					html label 
						attributeAt: 'for' put: 'target-date';
						with: 'Date'.	
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''#target-date'').pickadate({ formatSubmit: ''yyyy-mm-dd'', hiddenName: true })' ) ) .	 