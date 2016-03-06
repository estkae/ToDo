rendering
renderNameInputOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s8';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'perm_identity'.	
					html textInput 
						class: 'validate';
						id: 'icon-prefix';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						on: #userId of: self.
					html label 
						attributeAt: 'for' put: 'icon-prefix';
						with: 'User Id'.	
				].	
		] 