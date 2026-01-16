sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/sapdev/eu/favorites/page/test/integration/pages/PageList",
	"com/sapdev/eu/favorites/page/test/integration/pages/PageObjectPage",
	"com/sapdev/eu/favorites/page/test/integration/pages/GroupObjectPage"
], function (JourneyRunner, PageList, PageObjectPage, GroupObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/sapdev/eu/favorites/page') + '/test/flp.html#app-preview',
        pages: {
			onThePageList: PageList,
			onThePageObjectPage: PageObjectPage,
			onTheGroupObjectPage: GroupObjectPage
        },
        async: true
    });

    return runner;
});

