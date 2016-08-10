as yet unclassified
renderContentOn: html

	html div 
		id: 'delete_dialog';
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
										with: 'Top-5 - Delete Task'.
								 ].
								
							html div 
								class: 'modal-body';
								with: [ 
									html paragraph 
										class: 'ptext';
										with: 'Are you sure you want to dlete this task ?'.									
								 ].
								
							html div 
								class: 'modal-footer';
								with: [ 
									html button 
										class: 'btn';
										class: 'btn-primary';
										attributeAt: 'data-dismiss' put: 'modal';
										with: 'Delete'.
									html button 
										class: 'btn';
										class: 'btn-default';
										attributeAt: 'data-dismiss' put: 'modal';
										with: 'Close'.
								 ].	
						 ].
				 ].
		 ].
