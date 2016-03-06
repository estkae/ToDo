rendering
renderContentOn: html

	html div 
		class: 'row';
		with: [
			html div 
				class: 'col s6 offset-s5';
				with: [
					html span
					style: 'font-size:96px;font-family: ''Exo 2'''; 					
					with: 'Top-5'
				]  
		].

	html div 
		class: 'row';
		with: [ 
			html div
				class: 'col s8 offset-s3';
				with: [  
			html div 
				class: 'login-form';
					with: [ 
						html div 
							with: [ 
								html heading
									with: [ 
										html span 
											class: 'form-header';
											with: 'Register'
									]
								]
						].
					html div 
						with: [  	
							html div
								class: 'col s12'; 
								with: self messageComponent.
	 		 				html form
								class: 'form form-horizontal';
								with: [ 
									html div 
										class: 'col s12';
										with: [ self renderNameInputOn: html ].
									html div 
										class: 'col s12';	
										with: [ self renderEmailInputOn: html ].
									html div 
										class: 'col s12';	
										with: [ self renderPasswordInputOn: html ].
									html div 
										class: 'col s12';	
        		                  	with: [ self renderRepeatedPasswordInputOn: html ].
									html div 
										class: 'col s12';	
										with: [ self renderButtonsOn: html ].	
								]		
						]
				].
		].	