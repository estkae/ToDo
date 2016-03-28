rendering
renderContentOn: html
	
	html div 
		class: 'side-nav';
		with: [ 
		html div	
			style: 'margin:90px 0 10px 0;';
			with: [
				html heading level: 2;
					class: 'menu-title';
					with: [  
						html span 
							style: 'border-bottom:1px solid gray;';
							with: 'Menu'.
					].		
				html anchor 
					class: 'logout tooltipped';
					style: 'text-decoration: none;cursor:pointer;margin-top:70px;';
					attributeAt: 'data-position' put: 'right';
					attributeAt: 'data-delay' put: '50';
					attributeAt: 'data-tooltip' put: 'Logout';
					callback: [ self session doLogout. ];
					with: [
						html italic 
							class: 'material-icons';
							style: 'font-size:4rem;color:#004d40;';
							with: 'power_settings_new'  
					].  
				html anchor 
					class: 'backlog tooltipped';
					style: 'text-decoration: none;cursor:pointer;margin-top:20px;';
					attributeAt: 'data-position' put: 'right';
					attributeAt: 'data-delay' put: '50';
					attributeAt: 'data-tooltip' put: 'Backlog';
					onClick: ( ( html jQuery ajax )
						script: [ :s | 
							s << ( ( s jQuery class: 'non-active-tasks' ) show ). 
						]	
					);	
					with: [
						html italic 
							class: 'material-icons';
							style: 'font-size:4rem;color:#004d40;';
							with: 'storage'  
					].  
				html anchor 
					class: 'completed tooltipped';
					style: 'text-decoration: none;cursor:pointer;margin-top:20px;';
					attributeAt: 'data-position' put: 'right';
					attributeAt: 'data-delay' put: '50';
					attributeAt: 'data-tooltip' put: 'Completed Tasks';
					with: [
						html italic 
							class: 'material-icons';
							style: 'font-size:4rem;color:#004d40;';
							with: 'done'  
					].  
			]
		].
	
	html div 
		class: 'row';
		with: self bodyComponent.						