public class batch2seccond implements Database.Batchable<sObject>,Database.stateful {
    
    List<Id> processedAccIds = new List<Id>();
    
    public batch2seccond(List<Id> idsOfData)
    {
       	this.processedAccIds =  idsOfData;
    }
    
    //Account
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        
        return Database.getQueryLocator('Select Id from Contact where AccountId IN : processedAccIds');//x1000
    }
    
    
    public void execute(Database.BatchableContext bc, List<Account> accList)//200(150,50), 200(120,80), 200(199,1)
    {
        
        for(Account acc : accList)
        {
         System.debug('Hello 123');
        }
        
    }
    
    public void finish(Database.BatchableContext bc)
    {
        
        // Writes emails
        // System.debugs
        // Calling another batch
        
    }
    
}