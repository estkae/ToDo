accessing
renderEmailInputOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'account_circle'.
					html textInput 
						class: 'validate';
						id: 'icon-prefix';
						autofocus;
						attributeAt: 'type' put: 'email';
						attributeAt: 'autocomplete' put: 'off';
						on: #email of: self.				
					html label 
						attributeAt: 'for' put: 'icon-prefix';
						with: 'Email'.	
				].	
		] 