accessing
renderButtonsOn: html

	html div 
		class: 'form-group';
		with: [ 
			html div
				class: 'col-md-offset-3 col-md-6';
				with: [ 
					html button 
						class: 'btn btn-primary login-button'; 
						callback: [ 
							self validateLogin
						]; 
						value: 'Login'.
					html button 
						class: 'btn btn-default login-button'; 
						callback: [ 
							self registerUser
						]; 
						value: 'Register'				
				]
		] 