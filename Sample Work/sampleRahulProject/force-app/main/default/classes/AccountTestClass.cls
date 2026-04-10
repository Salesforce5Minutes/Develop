@isTest
public class AccountTestClass {
    
    
    @testSetup
    public static void setup()
    {
        Account acc = new Account();
        acc.Name = 'saelsforce in 5 minutes';
        acc.randomTextField__c = 'Testing';
        insert acc;
        
        Account acc2 = [Select Id,Industry from Account Limit 1];
        
        
    }
    
    
    @isTest
    public static void accountInsutryAgriculutureTest()
    {
        Account acc = [Select Id,Industry from Account Limit 1];
        acc.Industry = 'Agriculture';
        update acc;
        
    }
    
    @isTest
    public static void accountInsutryAparelTest()
    {
        Account acc = [Select Id,Industry from Account Limit 1];
        acc.Industry = 'Apparel';
        update acc;
        
    }
    
    @isTest
    public static void accountInsutryRetailTest()
    {
        Account acc = [Select Id,Industry from Account Limit 1];
        acc.Industry = 'Retail';
        update acc;
        
        
    }
    
    
}