rendering
renderButtonsOn: html

	html div 
		class: 'form-group';
		with: [ 
			html div
				class: 'col-md-offset-3 col-md-6';
				with: [ 
					html submitButton 
						class: 'btn btn-primary login-button'; 
						callback: [ 
							self validateRegistration
						]; 
						value: 'Register'.
					html submitButton 
						class: 'btn btn-default login-button'; 
						callback: [ 
							self answer: nil
						]; 
						value: 'Cancel'				
				]
		] 