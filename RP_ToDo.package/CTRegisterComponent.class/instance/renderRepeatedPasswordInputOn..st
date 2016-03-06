rendering
renderRepeatedPasswordInputOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'vpn_key'.	
					html passwordInput 
						class: 'validate';
						id: 'icon-prefix';
						attributeAt: 'autocomplete' put: 'off';
						on: #repeatPassword of: self.
					html label 
						attributeAt: 'for' put: 'icon-prefix';
						with: 'Repeat Password'.	
				].	
		] 