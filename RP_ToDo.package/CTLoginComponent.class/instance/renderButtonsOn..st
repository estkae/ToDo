accessing
renderButtonsOn: html

	html div 
		with: [ 
			html div
				class: 'col s6';
				with: [ 
					html button 
						class: 'btn-large waves-effect waves-light'; 
						callback: [ 
							self validateLogin
						]; 
						with: 'Login'.
					html button 
						class: 'btn-large waves-effect waves-light'; 
						style: 'margin-left: 12px;';
						callback: [ 
							self registerUser
						]; 
						with: 'Register'.				
				]
		].