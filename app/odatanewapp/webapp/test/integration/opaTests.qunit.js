sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'odatanewapp/test/integration/FirstJourney',
		'odatanewapp/test/integration/pages/poheaderList',
		'odatanewapp/test/integration/pages/poheaderObjectPage',
		'odatanewapp/test/integration/pages/polineitemObjectPage'
    ],
    function(JourneyRunner, opaJourney, poheaderList, poheaderObjectPage, polineitemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('odatanewapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepoheaderList: poheaderList,
					onThepoheaderObjectPage: poheaderObjectPage,
					onThepolineitemObjectPage: polineitemObjectPage
                }
            },
            opaJourney.run
        );
    }
);