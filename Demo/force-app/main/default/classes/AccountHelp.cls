public class AccountHelp {
    public static void createContractRecord(List<Account> accountlist){
        List<Contract> contractList = new List<Contract>();
        for(Account acc : accountlist){
            if(acc.SLA__c == 'Gold'){
                Contract con = new Contract(); 
                con.AccountId = acc.Id;
                con.Status = 'Draft';
                con.StartDate = system.Today();
                con.ContractTerm = 24;
                contractList.add(con);                
			}
   		}
        insert contractList;
    }

    public static void createCaseRecord(List<Account> accountList){
        List<Case> caseList = new List <Case>();
        for(Account acc : accountList){
            if(acc.CustomerPriority__c == 'High'){
                Case cas = new Case();
                cas.AccountId = acc.Id;
                cas.Origin = 'Phone';
                CaseList.add(cas);
            }
            
        }
         insert caseList;
    } 
    public static Integer additionmethod(Integer number1, Integer number2){
      Integer sum = number1+number2;
        return sum;
        
    }
}