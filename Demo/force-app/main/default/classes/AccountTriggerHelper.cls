Public class AccountTriggerHelper {
    
    //Method One
    public static void updateAccountRecord(List<Account> accountList){
        for(Account acc : AccountList ){
            if(acc.type == null){
                acc.type = 'Prospect';      
            }
        }
    }  
    
    //Method Two
    public void createContactRecord (List<Account> accountlist){
        try{
            List<Contact> contactList = new List<Contact>();
            for(Account acc : accountlist){
                if (acc.Rating == 'Hot'){
                    Contact con = new Contact();
                    con.AccountId = acc.ID;
                    con.LastName = 'Test';
                    ContactList.add(con);
                }   
            }
            insert ContactList;//dml operations
        }
        catch(Exception ex){
            system.debug('There is error createContactRecord method in AccountTriggerHelper:'+ex.getlinenumber()+ex.getmessage());
        }
    }
    //Method Three
    public static void createOpportunityRecord (List<Account> accountList){
        List<Opportunity> opportunityList = new List<Opportunity>();
        for(Account acc : accountlist){
            if(acc.UpsellOpportunity__c == 'Yes'){
                Opportunity opp = new Opportunity();//Intance of Opportunity object
                opp.Name = 'Test';
                opp.CloseDate = System.today();
                opp.StageName = 'Qualification';
                opp.AccountId = acc.Id;
                opportunityList.add(opp);        
            }      
        } 
        insert opportunityList;
        //Method four
    }      
    public static void updateAccountRecord1(List<Account> newAccountList, Map<Id,Account> oldAccountMap){
        for(Account acc : newAccountList){
            if(acc.Ownership == 'Private' && oldAccountMap.get(acc.Id).Ownership == 'Public'){
                acc.Sic = '111';
            }
        }
    }
        //Method Five
    public static void createMap(){
        Map<Id,Account> accountMap = new Map<Id,Account>();
        for(Account acc : [SELECT Id, Name FROM Account]){
            accountMap.put(acc.Id,acc);
        }
        system.debug('accountMap---'+accountMap);
    }
    
    public static void createContactMap(){
        Map<Id,contact> contactMap = new Map<Id,Contact>();
        for(Contact acc : [Select Id, Name From Contact]){
            contactMap.put(acc.Id,acc);
        }
    } 
    public static void createOpportunityMap(){
        Map<Id,opportunity> opportunityMap = new Map<Id,Opportunity>();
        for(opportunity opp : [Select Id,Name From Opportunity] ){ 
            OpportunityMap.put(opp.Id,opp);    
        }
        system.debug('opportunityMap'+opportunityMap);
    }  

    public static void createCaseRecord(List<Account> newAccountList,Map<Id,Account> OldAccountMap){
        Map<Id,case> caseMap = new Map<Id,Case>();
        List<case> caseList = new List<case>();
        User us = [SELECT Id FROM User WHERE Name = 'Shanaya Verma' ];
        for(Account acc : newAccountList){
            if(acc.CustomerPriority__c == 'High' && OldAccountMap.get(acc.Id).CustomerPriority__c == 'Low'){
                case cas = new Case();
                cas.AccountId = acc.Id;
                cas.Origin = 'Phone';
                cas.OwnerId = us.Id;
                CaseList.add(cas);        
            }
            insert caseList;
        }
    } 
    case cas = new Case();
    cas.AccountId = acc.Id;
    cas.Origin = 'Phone';
    
}
