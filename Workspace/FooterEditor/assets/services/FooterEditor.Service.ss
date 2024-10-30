
function service(request, response)
{
	'use strict';
	try 
	{
		require('jj.FooterEditor.FooterEditor.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('jj.FooterEditor.FooterEditor.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}