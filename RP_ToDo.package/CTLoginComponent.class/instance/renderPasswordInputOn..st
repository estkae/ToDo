accessing
renderPasswordInputOn: html

	html div 
		class: 'form-group';
		with: [ 
			html label
				class: 'control-label';
				class: 'col-md-3';
				with: [ html text: 'Password :' ].
			html div 
				class: 'col-md-6';
				with: [ 	
					html passwordInput 
						class: 'form-control';
						"callback: [ :value | self password: ( CTUser hashPassword: value ) ];"
						on: #password of: self.
				].
		] 