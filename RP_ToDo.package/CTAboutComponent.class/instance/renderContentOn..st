as yet unclassified
renderContentOn: html

	html div 
		id: 'about-modal';
		class: 'modal';
		with: [ 
			html div 
				class: 'modal-dialog';
				class: 'modal-lg';
				with: [ 
					html div 
						class: 'modal-content';
						with: [ 
							html div 
								class: 'modal-header';
								with: [
									html button 
										type: 'button';
										class: 'close';
										attributeAt: 'data-dismiss' put: 'modal';
										with: [
											html span 
												attributeAt: 'aria-hidden' put: 'true';
												with: 'x'. 
											html span 
												class: 'sr-only';
												with: 'Close'.	
										 ].
									
									html heading
										level: 4;
										class: 'modal-title';
										id: 'myModalLabel';
										with: 'About Top-5'.
								 ].
								
							html div 
								class: 'modal-body';
								with: [ 
									html paragraph 
										class: 'ptext';
										with: 'Top-5 is a variation of a ToDo App built using Smalltalk and the Seaside framework.'.
									html paragraph 
										class: 'ptext';
										with: 'It uses the Twitter Bootstrap framework to provide the styling and JQuery to provide some of the interaction processes. For more information have a look on my website at :-  http://www.developontheweb.co.uk/seaside.html.'.
								 ].
								
							html div 
								class: 'modal-footer';
								with: [ 
									html button 
										class: 'btn';
										class: 'btn-default';
										attributeAt: 'data-dismiss' put: 'modal';
										with: 'Close'.
								 ].	
						 ].
				 ].
		 ].
