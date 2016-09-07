as yet unclassified
renderToDoTaskActionDeleteOn: html

	html anchor 
		class: 'btn-floating tooltipped modal-trigger task-delete';
		style: 'margin-right:10px;';
		attributeAt: 'data-position' put: 'top';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Delete';
		url: '#task-action-modal', self task id;
		onClick: ( ( html jQuery ajax )
			script: [ :s | 
				self taskActionComponent: CTToDoListItemTaskActionComponent new.	
				self taskActionComponent task: self task.
				self taskActionComponent taskAction: 'Delete'.
				self taskActionComponent messageComponent infoMessage: 'Delete this task.'.
				s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Delete this task.' ). 
				s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Delete' ). 
				s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
				s << ( ( s jQuery id: 'top5-overlay' ) show ).
				s << ( ( s jQuery id: 'task-action-modal' ) show ).
			]	
		);									
		with: [ 
			html italic 
			class: 'material-icons';
			with: 'delete'.
		].