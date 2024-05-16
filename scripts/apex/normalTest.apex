@isTest
private with sharing class MyTestClass {
    @testSetup
    static void setup() {
        new DataFactory().loadCsvData();
    }
    @isTest
    static void myUnitTest() {
        Test.startTest();
        Test.stopTest();
        Assert.areEqual(1, 1);
    }
}
