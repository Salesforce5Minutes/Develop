@isTest
public class AccountTriggerTestClass {
    
    @testSetup    
    public static void setupMethod()
    {
        Account acc = new Account();
        acc.Name ='First Account';
        acc.randomTextField__c = 'Test'; 
        insert acc;
        
        
        for(Integer i=0; i<=70 ;i++)
        {
            Account acc2 = [Select Id , Name,Phone from Account Limit 1];
        }
    }
    
    @isTest
    public static void firstMethod()
    { 
        for(Integer i=0; i<=20 ;i++)
        {
            //Account acc2 = [Select Id , Name,Phone from Account Limit 1];
        } 
        
        secondMethod();
        
    } 
    
    @isTest
    public static void secondMethod()
    { 
        for(Integer i=0; i<=20 ;i++)
        {
            //Account acc2 = [Select Id , Name,Phone from Account Limit 1];
        } 
        
    } 
    
    
    public void myMethod()
    {
        
    }


    
    
    
    
}