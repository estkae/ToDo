as yet unclassified
renderToDoTaskActionActiveOn: html

	html anchor 
		class: 'btn-floating tooltipped task-edit';
		style: 'margin-right:10px;';
		attributeAt: 'data-position' put: 'top';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Activate';	
		url: '#task-action-modal', self task id;	
		onClick: ( ( html jQuery ajax )
			script: [ :s | 
				self taskActionComponent: CTToDoListItemTaskActionComponent new.	
				self taskActionComponent task: self task.
				self taskActionComponent taskAction: 'Activate'.
				self taskActionComponent messageComponent infoMessage: 'Place this task in the Task List.'.
				s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Move this task to the Task List.' ). 
				s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Task List' ). 
				s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
				s << ( ( s jQuery id: 'top5-overlay' ) show ).
				s << ( ( s jQuery id: 'task-action-modal' ) show ).
			]	
		);							
		with: [ 
			html italic 
			class: 'material-icons';
			with: 'call_received'.
		].