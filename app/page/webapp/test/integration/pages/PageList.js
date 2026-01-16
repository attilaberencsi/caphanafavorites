sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.sapdev.eu.favorites.page',
            componentId: 'PageList',
            contextPath: '/Page'
        },
        CustomPageDefinitions
    );
});