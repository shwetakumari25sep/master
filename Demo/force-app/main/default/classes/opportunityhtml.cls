public class opportunityhtml {
    public static void updateopportunity(List<Opportunity>opportunityList){
    for(opportunity opp : opportunityList){
        if(opp.Type == 'New Customer'){
            opp.Sales_Region__c = 'Asia';
            
        }
    }
 }
    
    //Method 2
	public static void createcase(List<Opportunity> opportunityList){
     	List<case> caseList = new List<case>();
        User us = [SELECT Id,name FROM User WHERE Name ='Shanaya Verma'];
    	for(opportunity opp : opportunityList){
        	if(opp.Type == 'New Customer'){   
            	case cas = new case();
            	cas.Origin = 'Phone';
                cas.Status = 'New';
            	cas.OwnerId = us.Id;
                cas.Opportunity__c = opp.Id; 
                CaseList.add(cas);
            }
        }
        insert caseList;
    }
    
    //Method 3
    public static void createquotes(List<Opportunity> opportunityList){
        List<Quote> quotesList = new List<Quote>();
        	for(opportunity opp : opportunityList){
            	if (opp.Sales_Region__c == 'North America'){
                    Quote quo = new quote();
                    quo.Name = 'Romeo';
                    
                    
                
            }
                
        }            
     }            
}