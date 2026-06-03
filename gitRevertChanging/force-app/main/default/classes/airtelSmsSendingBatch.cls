public class airtelSmsSendingBatch implements Database.Batchable<sObject>,Database.Stateful{
    List<Id> recordsProcessed = new List<Id>();
    Integer counter = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc) 
    {
        return Database.getQueryLocator('Select Id,email from Account'); //x2100 --> 210
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList)//
    {
        
        for(Account acc : accList)
        {
            acc.Name = 'Test';
            recordsProcessed.add(acc.Id);
            counter++;
           
        }
        update accList;
    }
    
    public void finish(Database.BatchableContext bc)
    {
        batchTwoLearn two = new batchTwoLearn(recordsProcessed);
        Database.executeBatch(two);
    }
    
    
}