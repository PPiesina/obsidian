@isTest
private with sharing class API_Inbound_TransferAct_Test {
    @testSetup
    static void setup() {
        new DataFactory().loadCsvData();
    }

    @isTest
    static void testPostNoImei() {
        TestUtils.setRestContext('TAPostBody', 'POST', '/services/apexrest/TransferAct', null);

        Test.startTest();
        API_Inbound_TransferAct.doPost();
        Test.stopTest();

        Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(
            RestContext.response.responseBody.toString()
        );
        Assert.areEqual(400, RestContext.response.statusCode);
        Assert.areEqual('no imei found in url params', responseMap.get('errorMessage'));
    }
}
