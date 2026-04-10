public with Sharing class AccountHandler {
    
    public void afterUpdate(List<Account> newAccount)
    {
        List<Id> accountsId = new List<Id>();
        for(Account acc : newAccount) {
            
            if(acc.Industry == 'Agriculture') {
              accountsId.add(acc.Id);
            }
        }
        if (!accountsId.isEmpty()) {
            
            List<Opportunity> oppList = [Select Id , Name from Opportunity where AccountId IN : accountsId];
            
            for (Opportunity oopp : oppList) {
                
                oopp.Name = 'Primary';
                
            }
            //update oppList;
            finalDmlApex.finalUpdate(oppList);
            
        }
        
    }
    
    public void beforeUpdate(List<Account> newAccount)
    {
        for(Account acc : newAccount) {
       
            if(acc.Industry == 'Apparel') {
               acc.Description = 'It has been Populated as Apparel';
            }
        }   
    }
    
}