@IsTest(SeeAllData=true)
public class AccountTestClass {
    
    
    
    @isTest(SeeAllData=false)
    public static void accountIsUpdated()
    {
        List<Account> acc = [Select Id , Name from Account ];
        System.debug('see Acc1 '+acc);
    }
    
    
    @isTest
    public static void accountIsUpdatedToAgri()
    {
        List<Account> acc = [Select Id , Name from Account];
		System.debug('see Acc2 '+acc);       	
    
    }
    
    @isTest
    public static void coveringBatchClass()
    {
        batch2AprilLearning obj1 = new batch2AprilLearning();
        Test.startTest();
        Database.executeBatch(obj1);
        Test.stopTest();
    }
    
    
    
 
    
}