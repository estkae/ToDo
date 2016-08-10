as yet unclassified
renderToDoTaskExpandOn: html

	html div 
		class: 'col s1';
		style: 'margin-top:5px;';
		with: [  
			html anchor 
				class: 'expand zoom-in';
				script: (
					( html jQuery this )
						on: 'click'
						do: (
								( "reset stuff - initialize" 
								( ( html jQuery class: 'zoom-out' ) addClass: 'zoom-in' ),
								( ( html jQuery class: 'zoom-out' ) removeClass: 'zoom-out' ),
								"update classes for zoom icon"
								 ( ( html jQuery this ) removeClass: 'zoom-in' ),
								( ( html jQuery this ) addClass: 'zoom-out' ),
								( ( html jQuery class: 'task-notes-expand' ) text: 'zoom_in'  ),
								( ( html jQuery class: 'task-notes-expand', self task id ) text: 'zoom_out'  ),
								"hide and show as appropriate"
								( ( html jQuery class: 'note-input' ) hide: 0.1 seconds ),
								( ( html jQuery class: 'task-data-notes' ) hide: 0.2 seconds ),
								( ( html jQuery class: 'task-data', self task id ) show: 0.3 seconds ) ),
								( ( html jQuery expression: ( ( JSStream on: '$(''.tooltipped'').tooltip({ delay: 50 })' ) ) ) )	 	 
							condition: ( html jQuery this hasClass: 'zoom-in' )
							else: ( ( ( html jQuery this ) removeClass: 'zoom-out' ),
								( ( html jQuery this ) addClass: 'zoom-in' ),
								( ( html jQuery class: 'task-notes-expand', self task id ) text: 'zoom_in'  ),
								( ( html jQuery class: 'task-data', self task id ) hide: 0.3 seconds ) ) 						
						)								
				);																		
				with: [ 
					html italic 
						class: 'material-icons';
						class: 'task-notes-expand task-notes-expand', self task id;
						style: 'font-size:3rem;color:black;cursor:pointer;margin-top:-5px;';
						with: 'zoom_in'
				]		
		].				