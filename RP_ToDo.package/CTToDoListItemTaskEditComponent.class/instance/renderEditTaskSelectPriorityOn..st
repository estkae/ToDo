accessing
renderEditTaskSelectPriorityOn: html

	| currentTaskPriority priorityCounter taskPriorities |
	taskPriorities := #( High Medium Low ).
	
	"there must be a better way of doing this ..." 
	currentTaskPriority := taskPriorities detect: [ :each | ( each asString ) = self task priority  ].
	( ( currentTaskPriority asString ) = 'High' )
		ifTrue: [ priorityCounter := 1. self priority: 'High'  ]
		ifFalse: [
			( ( currentTaskPriority asString ) = 'Medium' )
				ifTrue: [ priorityCounter := 2. self priority: 'Medium' ]
				ifFalse: [ priorityCounter := 3. self priority: 'Low' ]  
		].
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
						id: 'priority', self task id;
						style: 'margin-left:20px;';
						size: 3;	
						list:  taskPriorities; 
						selected: ( taskPriorities at: priorityCounter ); 
						on: #priority of: self.		
					html label 
						attributeAt: 'for' put: 'priority', self task id;
						with: 'Priority'.			
				].	
		].	
					
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .			