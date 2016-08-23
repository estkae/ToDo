accessing
renderEditTaskDateOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'schedule'.
					html textInput 
						class: 'datepicker deadline-date';
						"id: 'deadline-date', self task id;"
						id: 'deadline-date';
						attributeAt: 'type' put: 'date';
						on: #targetDate of: self;
						value: self task deadline.		
					html label 
						class: 'active';
						attributeAt: 'for' put: 'deadline-date', self task id;
						with: 'Date'.	
				].
		].	
		
	html document addLoadScript: ( ( JSStream on: '$(''#deadline-date'').pickadate({ formatSubmit: ''yyyy-mm-dd'', hiddenName: true })' ) ) .							