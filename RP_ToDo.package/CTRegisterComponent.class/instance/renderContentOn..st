rendering
renderContentOn: html

	html div 
		class: 'row';
		with: self navBarComponent.

	html div 
		class: 'container';
		with: [ 
			html div 
				class: 'col-md-3'.	
			html div 
				class: 'login-form';
				class: 'col-md-8';
				with: [ 
					html div 
						class: 'register-header';
						with: [ 
							html heading
								with: [ 
									html span 
										class: 'form-header';
										with: 'Register'
								].
						].
					html div 
						with: self messageComponent.
	 		 		html form
						class: 'form-horizontal';
						with: [ 
							self renderNameInputOn: html.
							self renderEmailInputOn: html.
							self renderPasswordInputOn: html.
                                          self renderRepeatedPasswordInputOn: html.
							self renderButtonsOn: html.	
						]
				].
			html div 
				class: 'col-md-3'.
		].
	
	html div 
		class: 'row';
		with: self aboutComponent.	