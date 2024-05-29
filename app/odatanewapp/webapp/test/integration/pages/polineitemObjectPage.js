sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'odatanewapp',
            componentId: 'polineitemObjectPage',
            contextPath: '/poheader/po_to_item'
        },
        CustomPageDefinitions
    );
});