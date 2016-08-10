rendering
renderContentOn: html

	html div 
		class: 'row task-header';
		with: [ 
			html div 
				class: 'col s11';
				with: [ 		
					html div 
						class: 'col s4';
						with: [ 
							html heading level: 5;
							with: [ 
								html span 
								style: 'border-bottom: 3px solid lightblue;'; 
								with: 'Description'.
							]	
						].		
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 3px solid lightblue;'; 
								with: 'Deadline'.
							]	
						].	
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 3px solid lightblue;'; 
								with: 'Priority'.
							]	
						].		
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 3px solid lightblue;'; 
								with: 'Status'.
							]	
						].	
					html div 
						class: 'col s1';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 3px solid lightblue;'; 
								with: '#Notes'.
							]	
						].										
				].
				html div
				class: 'col s1'.
		].	