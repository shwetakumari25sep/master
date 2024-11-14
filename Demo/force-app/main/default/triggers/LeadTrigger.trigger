trigger LeadTrigger on Lead (before insert) {
    
    if(Trigger.isBefore && Trigger.isInsert){ 
        LeadAnnualRevenue.UpdateLeadRecord(Trigger.new);
    }
}