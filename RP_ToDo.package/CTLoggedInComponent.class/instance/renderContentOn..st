rendering
renderContentOn: html

	html div
		class: 'fixed-action-btn horizontal';
		style: 'top:35px;right:55px;';
		with: [
			html anchor 
				class: 'btn-floating btn-large red';
				with: [ 
					html italic 
						class: 'large mdi-navigation-menu' 
				].
			html unorderedList 
				with: [ 
					html listItem 
						with: [ 
							html anchor
								class: 'btn-floating green';
								with: [
									html italic 
										class: 'material-icons';
										with: 'lock'  
								]
						].	
					html listItem
						with: [ 
							html anchor 
								class: 'btn-floating green';
								with: [
									html italic 
										class: 'material-icons';
										with: 'publish'
								]		  
						].  
				].  
		]. 
	
	html div 
		class: 'row';
		with: self bodyComponent.			