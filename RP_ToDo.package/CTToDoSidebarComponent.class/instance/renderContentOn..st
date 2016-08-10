as yet unclassified
renderContentOn: html
	
	html div 
		class: 'cd-panel-container';
		with: [
			html div 
				class: 'cd-panel-content';
				with: [
					html anchor 
						class: 'cd-panel-close';
						url: '#0';	
						with: [ 
							html italic 
								class: 'material-icons';
								style: 'font-size:48px;color:teal;cursor:pointer;';
								with: 'cancel' 
						].

					html div 
						id: 'full-content';
						style: 'width:100%'  
				]
		].	  	

	