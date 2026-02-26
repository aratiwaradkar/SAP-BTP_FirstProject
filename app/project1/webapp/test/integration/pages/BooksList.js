sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'bookstore.project1',
            componentId: 'BooksList',
            contextPath: '/Books'
        },
        CustomPageDefinitions
    );
});