as yet unclassified
renderContentOn: html

	| listItem activeCount |	
	activeCount := 0.

	self todoItems isEmpty 
		ifTrue: [ 
			self header: CTToDoListComponentHeaderEmpty new.
			html render: header.
	 	]
		ifFalse: [
			self header: CTToDoListComponentHeader new.
			html render: header.	
					
			self todoItems do: [ :each | 
				"render active items - should only be 5"
				( each status = 'Active' )
				ifTrue: [ 
					listItem := CTToDoListItemComponent new.
					listItem task: each.
					html render: listItem.
				].	
			]
		].	
		
	html div 
		id: 'top5-overlay';
		style: 'display:none;z-index:200;position: fixed;top: 0;left: 0;width: 100%;	height: 100%;background: #000;opacity:0.2;filter: alpha(opacity=50);'.

	html div 
		id: 'task-edit-modal';
		style: 'display:none;position:fixed;top: 0; left: 0; bottom: 0; right: 0; z-index:500; height: 550px; width: 900px; margin: 120px auto; border: 4px solid  #8aacb8; border-radius: 10px; background-color: #fff; text-align:center; padding: 20px;';
		with: [
			html div 
			  id: 'task-edit-modal-content'.
		].

	html div 
		id: 'task-action-modal';
		style: 'display:none;position:fixed;top: 0; left: 0; bottom: 0; right: 0; z-index:500; height: 400px; width: 850px; margin: 190px auto; border: 4px solid  #8aacb8; border-radius: 10px; background-color: #fff; text-align:center; padding: 20px;';
		with: [
			html div 
			  id: 'task-action-modal-content'.
		].