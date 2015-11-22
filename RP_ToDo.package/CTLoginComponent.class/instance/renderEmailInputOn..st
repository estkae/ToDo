accessing
renderEmailInputOn: html

	html div 
		class: 'form-group';
		with: [ 
			html label
				class: 'control-label';
				class: 'col-md-3';
				with: [ 
					html text: 'Email :'.
				].
			html div 
				class: 'col-md-6';
				with: [ 	
					html textInput 
						class: 'form-control';
						autofocus;
						attributeAt: 'autocomplete' put: 'off';
						on: #email of: self.
					]	
		] 