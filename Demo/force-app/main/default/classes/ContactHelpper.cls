public class ContactHelpper {
    public static void updateContactRecord(List<Contact> contactList){
        for(Contact con : contactList){
            if(con.Department == null){
            	con.Department = 'Equipment'; 
             }
        } 
               
    }
    //Method 2
    public static void createCaseRecord(List<Contact> contactList){
        List<case> caseList = new List<case>();
        for(Contact con : contactList){
            if(con.LeadSource == 'Web'){
                case cas = new case();
        		cas.Origin = 'Phone';
                cas.ContactId = con.Id;
                caseList.add(cas);
            }
        }
        insert caseList;
    }
         
    public static void createopportunitiesRecord(List<contact> contactList){
        List<opportunity> opportunityList = new List<opportunity>();
        for(contact con : contactList){
            if(con.Level__c == 'Primary'){
               	opportunity opp = new opportunity();
                opp.CloseDate = system.today();
                opp.StageName = 'Needs Analysis';
                opp.Name = 'Developer';
                opp.contactId = con.Id;
                opportunityList.add(opp);
                
            }
            insert opportunityList;
        }
    } 
    
}