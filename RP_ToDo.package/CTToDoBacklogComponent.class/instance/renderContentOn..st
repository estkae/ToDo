as yet unclassified
renderContentOn: html

	| backlogCount listItem |
	
	"html div 
		class: 'cd-panel-from-right';
		with: ["
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
									"html italic 
										class: 'material-icons';
										style: 'font-size:3rem;color:black;cursor:pointer;margin-top:-5px;';
										with: 'close' "
 								].

							html div 
								id: 'full-content';
								"style: 'display:none;width:100%';"
								style: 'width:100%';
								with: [  
										backlogCount := 0.
										( self backlogItems isEmpty )
											ifFalse: [					
												self backlogItems do: [ :each | 
													( each status = 'Backlog' )
													ifTrue: [ 
														listItem := CTToDoListItemComponent new.
														listItem task: each.
														html render: listItem.
													].	
												]
											]
								]  
						].						  
				].  
		"]."
	