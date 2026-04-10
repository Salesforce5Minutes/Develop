@IsTest
public class accountTestClassTrigger {

    
    
    @isTest(SeeAllData=true)
    public static void industryMustBeAparel()
    {
        for(Integer i=0; i<=20; i++)
        {
            Account ac1 =[Select Id , Name from Account Limit 1];
        }
        //--> 10
        test.startTest();//-->100
        
        for(Integer i=0; i<=70; i++)
        {
            Account ac1 =[Select Id , Name from Account Limit 1];
        }
        //--> 30
        test.stopTest();
        
         for(Integer i=0; i<=15; i++)
        {
            Account ac1 =[Select Id , Name from Account Limit 1];
        }
        Account acc = [Select Id , Name , Industry from Account Limit 1];
        acc.Industry = 'Apparel';
        try{
            update acc;
        }
        catch(exception ex)
        {
            
        }
       
    }
    
     @isTest
    public static void industryMustBeAgriculture()
    {
        for(Integer i=0; i<=20; i++)
        {
            Account ac1 =[Select Id , Name from Account Limit 1];
        }
        Account acc = [Select Id , Name , Industry from Account Limit 1];
        acc.Industry = 'Agriculture';
        update acc;
        
    }
    
  

}