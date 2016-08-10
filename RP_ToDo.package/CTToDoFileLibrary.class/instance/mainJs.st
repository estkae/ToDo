uploaded
mainJs
	^ '
jQuery(document).ready(function($){
	//open the lateral panel
	$(''.cd-btn'').on(''click'', function(event){
		event.preventDefault();
		$(''.cd-panel'').addClass(''is-visible'');
	});
	//close the lateral panel
	$(''.cd-panel-close'').on(''click'', function(event){
			$(''.cd-panel'').removeClass(''is-visible'');
			$(''.sidebar-items'').remove();
			event.preventDefault();
	});
});	
'