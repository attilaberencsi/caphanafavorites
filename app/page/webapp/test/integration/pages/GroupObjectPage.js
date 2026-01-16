sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.sapdev.eu.favorites.page',
            componentId: 'GroupObjectPage',
            contextPath: '/Page/groups'
        },
        CustomPageDefinitions
    );
});