as yet unclassified
renderContentOn: html
	
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
			self renderMenuLogoutOn: html.		
			self renderMenuNewTaskOn: html.
			self renderMenuBacklogOn: html.
			self renderMenuCompletedOn: html.	
		].