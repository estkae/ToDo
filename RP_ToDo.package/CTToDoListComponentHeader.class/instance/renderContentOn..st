rendering
renderContentOn: html

	html div 
		class: 'row task-header';
		with: [ 
			html div 
				with: [ 			
					html div 
						class: 'col s4';
						with: [ 
							html heading level: 5;
							with: [ 
								html span 
								style: 'border-bottom: 2px solid lightgray;'; 
								with: 'Description'.
							]	
						].		
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 2px solid lightgray;'; 
								with: 'Priority'.
							]	
						].	
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 2px solid lightgray;'; 
								with: 'Deadline'.
							]	
						].		
					html div 
						class: 'col s2';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 2px solid lightgray;'; 
								with: 'Status'.
							]	
						].	
					html div 
						class: 'col s1';
						with: [ 
							html heading level: 5;	
							with: [ 
								html span 
								style: 'border-bottom: 2px solid lightgray;'; 
								with: '#Notes'.
							]	
						].	
					html div 
						class: 'col s1';	
						class: 'task-head-col'.			
					html div 
						class: 'col s1'.			
				].
		].	