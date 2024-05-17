```JSON
	"Create generic trigger handler": {
		"prefix": "dcTrigger",
		"body": [
			"public with sharing class ${1:OBJECT}TriggerHandler extends TriggerHandler {",
			"    private List<${1:OBJECT}__c> newRecords;",
			"    private Map<Id,${1:OBJECT}__c> oldRecords;",
			"    public ${1:OBJECT}TriggerHandler() {",
			"        this.newRecords = (List<${1:OBJECT}__c>) Trigger.new;",
			"        this.oldRecords = (Map<Id,${1:OBJECT}__c>) Trigger.oldMap;",
			"    }",
			"    public override void beforeUpdate() {",
			"        //${1:OBJECT}__c[] filteredRecords = new List<${1:OBJECT}__c>();",
			"        for(${1:OBJECT}__c record : this.newRecords){",
			"            ${1:OBJECT}__c oldRecord = this.oldRecords.get(record.Id);",
			"            //Boolean GENERIC_FIELD_CHANGED = isGENERIC_FIELDChanged(record, oldRecord);",
			"            //if(GENERIC_FIELD_CHANGED){",
			"                //filteredRecords.add(record);",
			"            //}",
			"        }",
			"        //GENERIC_METHOD(filteredRecords);",
			"    }",
			"    //private Boolean isGENERIC_FIELDChanged(${1:OBJECT}__c newRecord, ${1:OBJECT}__c oldRecord) {",
			"        //return (newRecord.GENERIC_FIELD != oldRecord.GENERIC_FIELD);",
			"    //}",
			"}"
		],
		"description": "Base trigger handler"
	},
	"Debug long string": {
		"prefix": "xlog",
		"body": [
			"for (Integer i = 0; i < ${1:var}.length(); i=i+300) {",
			"    Integer iEffectiveEnd = (i+300 > (${1:var}.length()) ? ${1:var}.length()-1 : i+300);",
			"    System.debug(${1:var}.substring(i,iEffectiveEnd));",
			"}"
		],
		"description": "Use it to debug long string to console."
	},
	"Trigger with all contexts, rollup method call and handler method call": {
		"prefix": "dcBaseTrigger",
		"body": [
			"trigger ${1:OBJECT}Trigger on ${1:OBJECT}__c(",
			"before insert,",
			"after insert,",
			"before update,",
			"after update,",
			"before delete,",
			"after delete,",
			"before undelete",
			"after undelete",
			") {",
			"// Rollup.runFromTrigger();",
			"// new ${1:OBJECT}TriggerHandler().run();",
			"}"
		],
		"description": "Use it when creating triggers."
	},
	"adds method header": {
		"prefix": "dc_doc",
		"body": [
			"/**",
			"* @Description ${1:example description}",
			"* @author Paulius Piešina | $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE",
			"* @param String varName",
			"* @returns String",
			"*/"
		],
		"description": "adds method header"
	},
	"inboundWrapperBaseEndpoint": {
		"prefix": "dc_basic_endpoint",
		"body": [
			"@RestResource(urlMapping='/${1:endpoint}')",
			"global with sharing class ${2:className} {",
			" private static final String IMEI = 'imei';",
			" private static final String[] REQUIRED_URL_PARAMS = new List<String>{ IMEI };",
			" private static final String[] REQUIRED_DTO_PARAMS = new List<String>{ IMEI };",
			"",
			" @Http${3:method}",
			" global static void do${3:method}() {",
			" new InboundWrapperV2.Builder()",
			" .setRequiredUrlParams(REQUIRED_URL_PARAMS)",
			" .setRequiredDTOAtributes(REQUIRED_DTO_PARAMS)",
			" .setDtoClass(DTO_Test[].class)",
			" .setLogicWrapper(new ${3:method}LogicWrapper())",
			" .buildnWork();",
			" }",
			"",
			" public with sharing class ${3:method}LogicWrapper implements InboundWrapperV2.IAPI_LogicWrapper {",
			" public void doWork(Map<String, Object> responseMap, Object inputData) {",
			" responseMap.put(InboundWrapperV2.RESPONSE_AS_BODY, inputData);",
			" responseMap.put(",
			" InboundWrapperV2.STATUS_CODE,",
			" InboundWrapperV2.STATUS_TO_CODE.get(HttpStatuses.OK)",
			" );",
			" }",
			" }",
			"",
			" public class DTO_Test {",
			" public String imei;",
			" public String taskId;",
			" }",
			"}"
		],
		"description": "inboundWrapperBaseEndpoint"
	}

```