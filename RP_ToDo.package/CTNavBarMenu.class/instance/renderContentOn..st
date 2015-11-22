rendering
renderContentOn: html
	html unorderedList 
		class: 'nav';
		class: 'navbar-nav';
		with: [ 
			self navBarMenuContent do: [ 
				:entry | html listItem with: [ 
					html anchor 
						url: entry value; 
						with: entry key
					] 
			 ]
		].
	
	html unorderedList 
		class: 'nav';
		class: 'navbar-nav';
		class: 'navbar-right';
		with: [ 
			self session isLoggedIn 
				ifTrue: [ 
					html listItem 
						with: [ 
							html anchor 
								callback: [ self session doLogout ];
								with: 'Logout'.
					]
				].
			html listItem 
				with: [ 		
					html anchor 
						class: 'about';
						attributeAt: 'data-toggle' put: 'modal';
						attributeAt: 'data-target' put: '#about-modal';
						with: 'About'.	
				].			
		]