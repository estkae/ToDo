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
				class: 'col-md-6';
				with: [ 
					html div 
						class: 'login-header';
						with: [ 
							html heading
								with: [ 
									html span 
										class: 'form-header';
										with: 'Login'
								].
						].
					html div 
						with: self messageComponent.
	 		 		html form
						class: 'form-horizontal';
						with: [ 
							self renderEmailInputOn: html.
							self renderPasswordInputOn: html.
							self renderButtonsOn: html.	
						]
				].
			html div 
				class: 'col-md-3'.
		].
	
	html div 
		class: 'row';
		with: self aboutComponent.	