as yet unclassified
renderToDoTaskActionCompletedOn: html

	html anchor 
		class: 'btn-floating tooltipped task-complete';
		class: 'btn-floating task-complete';
		style: 'cursor:pointer;margin-right:10px;';
		attributeAt: 'data-position' put: 'top';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Completed';
		url: '#task-action-modal', self task id;
		onClick: ( ( html jQuery ajax )
			script: [ :s | 
				self taskActionComponent: CTToDoListItemTaskActionComponent new.	
				self taskActionComponent task: self task.
				self taskActionComponent taskAction: 'Completed'.
				self taskActionComponent messageComponent infoMessage: 'Complete this task. You will be able to view the task and its notes in the Completed Task list. No updates will be possible.'.
				s << ( ( s jQuery class: 'task-action-text', self task id ) text: 'Has this task been completed.' ). 
				s << ( ( s jQuery class: 'task-action-button', self task id ) text: 'Completed' ). 
				s << ( ( s jQuery id: 'task-action-modal-content' ) append: [ html render: self taskActionComponent ] ). 
				s << ( ( s jQuery id: 'top5-overlay' ) show ).
				s << ( ( s jQuery id: 'task-action-modal' ) show ).
			]	
		);							
		with: [ 
			html italic 
				class: 'material-icons';
				with: 'done'.
		].	