rendering
renderContentOn: html

	html navigation  
		class: 'navbar';
		class: 'navbar-inverse';
		with: [ 
			html div 
				class: 'container';
				with: [
					html div  
						class: 'navbar-header';
						with: [ 
							html anchor 
								class: 'navbar-brand';
								style: 'font-style: italic;';
								url: 'http://www.developontheweb.co.uk/seaside.html';
								target: '_blank';
								with: 'Top-5'
						].
				html  div 
					class: 'collapse';
					class: 'navbar-collapse';
					with: self navBarMenu.	
				html  div 
					class: 'right';
					class: 'navbar-collapse';
					with: self navBarMenuRight	
				].
		  ].
