// @module jj.FooterEditor.FooterEditor
define('jj.FooterEditor.FooterEditor.View', [
    'jj_footereditor_footereditor.tpl',
    'Backbone'
], function (
    jj_footereditor_footereditor_tpl,
    FooterEditorSS2Model,
    Backbone
) {
    'use strict';

    return Backbone.View.extend({

        // Template for rendering the footer editor
        template: jj_footereditor_footereditor_tpl,

      
        initialize: function (options) {
            this.currentConfig = options.currentConfig;
         
            this.message = JSON.parse(this.currentConfig) || { multiColLinks: [] };

           
            this.columns = {
                column1: [], 
                column2: [], 
                column3: [], 
                column4: []  
            };

          
            this.populateCopyrightData();

           
            this.columns.column1.push({ logo: options.logourl, href: '#' });

         
            this.populateMultiColumnLinks();

           
            console.log(this.columns); 
        },

     
        populateCopyrightData: function () {
            const copyrightData = this.message.copyright;

            
            if (copyrightData) {
             
                if (copyrightData.phoneNum) {
                    this.columns.column1.push({ phone: copyrightData.phoneNum, value: `tel:${copyrightData.phoneNum}` });
                }
                if (copyrightData.emailID) {
                    this.columns.column1.push({ email: copyrightData.emailID, value: `mailto:${copyrightData.emailID}` });
                }
                if (copyrightData.storeName) {
                    this.columns.column1.push({ storeName: copyrightData.storeName, value: '#' }); // Non-link
                }
                if (copyrightData.address) {
                    this.columns.column1.push({ address: copyrightData.address, value: '#' }); // Non-link
                }
            }
        },

        // Populate columns with multi-column links from the message
        populateMultiColumnLinks: function () {
            this.message.multiColLinks.forEach(link => {
                if (link.column === "Column 1") {
                    this.columns.column2.push(link);
                } else if (link.column === "Column 2") {
                    this.columns.column3.push(link);
                }
            });
            
            // Add social media links to column4
            this.message.socialMediaLinks.forEach(link => {
                this.columns.column4.push(link);
            });
        },

      
        events: {
            
        },

       
        getContext: function () {
            return {
                columns: this.columns 
            };
        }
    });
});
