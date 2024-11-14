public class LeadAnnualRevenue {

    public static void UpdateLeadRecord(List<Lead> leadList){
        User us = [SELECT Id,name FROM User WHERE Name = 'Shanaya Verma'];
        for(lead led : leadList){
            if(led.Industry == 'Apparel'){
             	led.OwnerId = us.Id;
            }  
            
        }
    }
    
    
    
}