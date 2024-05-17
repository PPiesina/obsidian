
- Check how much api calls with rest
```Apex

[SELECT SUM(Counter__c) FROM Log__c WHERE CreatedDate = N_DAYS_AGO:1]; 
```



