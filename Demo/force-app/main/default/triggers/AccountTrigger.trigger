trigger AccountTrigger on Account(before insert , after insert,after update,before update){
    if(Trigger.isBefore && Trigger.isInsert){ 
    	AccountTriggerHelper.updateAccountRecord(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        AccountTriggerHelper ctrl = new AccountTriggerHelper();//Create intance of class to call non static method
        ctrl.createContactRecord(Trigger.new); 
        AccountHelp.createContractRecord(Trigger.new);
       AccountHelp.createCaseRecord(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        AccountTriggerHelper.createOpportunityRecord(Trigger.new);
        
        AccountTriggerHelper.createCaseRecord(Trigger.new,Trigger.oldMap); 
    }
    if(Trigger.isBefore && Trigger.isupdate){
       AccountTriggerHelper.updateAccountRecord1(Trigger.new,Trigger.oldMap);
    } 
   
}