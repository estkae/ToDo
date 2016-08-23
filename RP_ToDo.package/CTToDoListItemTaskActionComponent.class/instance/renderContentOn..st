rendering
renderContentOn: html

	"| taskHeader activeTasks |"
			
	html div 
		class: 'action-modal-content';
		with: [
			html div 
				class: 'row';
				with: [ 
					html heading level: 4; 
						with: [ 
							self renderTaskActionTypeOn: html
						]
				].	
			html div
				class: 'col s12'; 
				with: self messageComponent.		
			html div 
				class: 'row';
				with: [  
					self renderTaskActionDescriptionOn: html					
				].		
			html div 
				class: 'row';
				style: 'margin-top:45px;text-align:left;';
				with: [
					self renderTaskActionAnchorOn: html.
					html anchor 
						class: 'btn-large waves-effect';
						style: 'margin-left:15px;';
						onClick: ( ( html jQuery ajax )
							script: [ :s |
								s << ( ( s jQuery id: 'top5-overlay' ) hide ).
								s << ( ( s jQuery id: 'task-action-modal' ) hide ).
								s << ( ( s jQuery class: 'action-modal-content' ) remove ).
							]
						);	
						with: 'Cancel'													 
				]			
		].