
define(
	'jj.FooterEditor.FooterEditor'
	, [
		'jj.FooterEditor.FooterEditor.View'
	]
	, function (
		FooterEditorView
	) {
		'use strict';

		return {
			mountToApp: function mountToApp(container) {
				// using the 'Layout' component we add a new child view inside the 'Header' existing view 
				// (there will be a DOM element with the HTML attribute data-view="Header.Logo")
				// more documentation of the Extensibility API in
				// https://system.netsuite.com/help/helpcenter/en_US/APIs/SuiteCommerce/Extensibility/Frontend/index.html

				/** @type {LayoutComponent} */
				let layout = container.getComponent('Layout');
				var environment_component = container.getComponent('Environment');

				
			let environment_footerwarningsave,environment_logo;
				
				if (environment_component) {	
					environment_footerwarningsave = environment_component.getConfig("footer");
					environment_logo = environment_component.getConfig("header").logoUrl;
				} else {
					console.error('Environment component is not available.');
				}
				if (layout) {
					layout.removeChildView('Footer');
					layout.addChildView('Footer', function () {
						return new FooterEditorView({ container: container ,currentConfig: JSON.stringify(environment_footerwarningsave),logourl : environment_logo});
					});
				}

			}
		};
	});
