accessing
renderAddTaskSelectPriorityOn: html

	html div 
		class: 'row';
		with: [ 
			html div 
				class: 'input-field col s4';
				with: [ 
					html italic 
						class: 'material-icons prefix';
						with: 'clear_all'.
					html select
						id: 'priority';
						style: 'margin-left:20px;';
						size: 3;	
						list: self taskPriorities;
						selected: ( self taskPriorities at: 1);
						callback: [ :value | self priority: value asString ].		
					html label 
						attributeAt: 'for' put: 'priority';
						with: 'Priority'.			
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .	 