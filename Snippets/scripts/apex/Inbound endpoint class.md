```Apex
@RestResource(urlMapping='/Picklist/*')
global with sharing class API_Inbound_Picklist {
        @HttpGet
        global static void doGet() {
                new InboundWrapperV2.Builder()
                        .setValidator(new GetValidator())
                        .setLogicWrapper(new GetLogicWrapper())
                        .build()
                        .doWork();
        }

        public with sharing class GetValidator implements InboundWrapperV2.IAPI_InputValidator {
                public Object validate(Map<String, Object> responseMap) {
                     RestRequest req = RestContext.request;

                        if (false) {
                                responseMap.put('statusCode', 400);
                                throw new ValidatorException('No Picklist provided');
                        }

                        return 'anything';
                }
        }

public class ValidatorException extends Exception {
        }

        public with sharing class GetLogicWrapper implements InboundWrapperV2.IAPI_LogicWrapper {
                public void doWork(Map<String, Object> responseMap, Object inputData) {
                        String abything= (String) inputData;
                   
                        responseMap.put('response', responseObject);
                        responseMap.put('statusCode', 200);
                }
        }
}
```