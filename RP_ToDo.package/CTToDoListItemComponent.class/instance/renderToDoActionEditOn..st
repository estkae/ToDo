as yet unclassified
renderToDoActionEditOn: html

	html anchor 
		class: 'btn-floating tooltipped task-edit';
		style: 'margin-right:10px;';
		attributeAt: 'data-position' put: 'top';
		attributeAt: 'data-delay' put: '50';
		attributeAt: 'data-tooltip' put: 'Edit';
		onClick: ( ( html jQuery ajax )
			script: [ :s | 
				self taskEditComponent: CTToDoListItemTaskEditComponent new.
				self taskEditComponent task: self task.
				s << ( ( s jQuery id: 'task-edit-modal-content' ) append: [ html render: self taskEditComponent ] ). 
				s << ( ( s jQuery id: 'top5-overlay' ) show ).
				s << ( ( s jQuery id: 'task-edit-modal' ) show ).
			]	
		);							
		with: [ 
			html italic 
				class: 'material-icons';
				with: 'edit'.
		].	