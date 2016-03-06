accessing
renderAddTaskSelectAddToBacklogOn: html

	| backlogOptions backlogOptionsSize numberOfTasks |
	numberOfTasks := self session user numberOfActiveTasks.	
	( numberOfTasks < 5 )
		ifTrue: [ backlogOptions := #( 'No' 'Yes' ). backlogOptionsSize := 2  ]
		ifFalse: [ backlogOptions := #( 'Yes' ). backlogOptionsSize := 1 ].
			
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
						id: 'addtobacklog';
						style: 'margin-left:20px;';
						size: backlogOptionsSize;	
						list: backlogOptions;
						selected: ( backlogOptions at: 1);
						callback: [ :value | self backlog: value asString ].		
					html label 
						attributeAt: 'for' put: 'addtobacklog';
						with: 'Add To Backlog'.			
				].	
		].
	
	html document addLoadScript: ( ( JSStream on: '$(''select'').material_select({ minimumResultsForSearch: Infinity })' ) ) .	 