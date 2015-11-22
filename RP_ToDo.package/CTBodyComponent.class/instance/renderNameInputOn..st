as yet unclassified
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
				class: 'col-md-6';
				with: [ 	
					html textInput 
						class: 'form-control';
						callback: [  ]	
				]
		] 
