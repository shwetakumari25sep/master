public class ContactTriggerHelper {
    public static void updateContactRecord(List<Contact> newContactList){
        for(Contact con : newContactList){
            if(con.LeadSource == 'Web'){
                con.Email = 'Shwetasingh.25@gmail.com';
            }
        } 
    }
    
    public static void sumTwoNumber(Integer var1 , Integer var2){
        Integer sum = var1 +var2;
        system.debug(sum);
    }
}