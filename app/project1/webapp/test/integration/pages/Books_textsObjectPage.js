sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bookstore.project1',
            componentId: 'Books_textsObjectPage',
            contextPath: '/Books/texts'
        },
        CustomPageDefinitions
    );
});