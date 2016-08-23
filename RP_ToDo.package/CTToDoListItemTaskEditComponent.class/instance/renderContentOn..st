as yet unclassified
renderContentOn: html

	html div 
		class: 'edit-modal-content';
		with: [
			html heading level: 4; 
				with: [ 
					html span 
						style: 'border-bottom: 2px solid gray';
						with: 'Edit Task'
				].		
			html div 
				with: [  
					html div
						class: 'col s12'; 
						with: self messageComponent.
					html form 
						class: 'form form-horizontal';
						with: [ 
							html div 
								class: 'col s12';
								with: [ self renderEditTaskDescriptionOn: html ].
							html div 
								class: 'col s12';
								with: [ self renderEditTaskDateOn: html ].
							html div 
								class: 'col s12';
								with: [ self renderEditTaskSelectPriorityOn: html ].	
							html div 
								class: 'col s12';
								with: [ self renderEditTaskButtonsOn: html ].			
						].
				].
		].												