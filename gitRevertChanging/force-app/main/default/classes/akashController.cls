public class akashController {
    
    
    @AuraEnabled
    public static contact createContact(String name, String phoneNo)
    {
        Contact con = new Contact();
        con.LastName = name;
        con.Phone = phoneNo;
        insert con;
        return con;
    }
    
    
    @AuraEnabled(cacheable=true)
    public static Account getAccountData(String name)
    {
        Account acc = [Select Id , Name from Account where Name =: name];
        return acc;
    }
    
    public static List<String> getData(String objectApiName)
    {
        List<string> captureFields = new List<String>();
      List<LearnCustomMetdatad__mdt> customMetdata =  LearnCustomMetdatad__mdt.getAll().values();
        
        for(LearnCustomMetdatad__mdt mdt : customMetdata)
        {
            if(mdt.ObjectApiName__c == objectApiName)
            {
                for(String fieldds : mdt.Fields__c.split(','))
                {
                    captureFields.add(fieldds);
                }
                
            }
        }
        System.debug('Fields Should be : '+captureFields);
        return captureFields;
    }
    
    

}