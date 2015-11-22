rendering
renderNameInputOn: html

	html div 
		class: 'form-group';
		with: [ 
			html label
				class: 'control-label';
				class: 'col-md-3';
				with: [ 
					html text: 'User Id :'.
				].
			html div 
				class: 'col-md-3';
				with: [ 	
					html textInput 
						class: 'form-control';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						on: #userId of: self.
				]
		] 