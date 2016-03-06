rendering
renderContentOn: html

	html div 
		class: 'row task-header';
		with: [ 
			html div
				with: [ 	
					html div 
						class: 'col s2'.	
					html div 
						class: 'col s10';
						style: 'font-size:22px;';
						with: 'No active tasks are currently defined'.			
				]
		].	