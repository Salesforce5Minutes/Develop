public class anuradahaApex {
    
    public void myMethod()
    {
        
        Account acc = [Select Id, Name from Account Limit 1];// Rohit
        myFuture(acc.Id); 
        acc.Name ='Prashanti';
        update acc;
    }
    
    
    @future(callout=true)
    public static void myFuture(Id accIds)
    {
       List<Account> acc = [Select Id, Name from Account where Id=: accIds];
        //F-->F
        //F-->B
        //B-->F
        
        
    }
    
}