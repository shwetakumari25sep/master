trigger opportunity on Opportunity (before insert, after insert) {
	if (trigger.isbefore && Trigger.isInsert){
        opportunityhtml.updateopportunity(Trigger.New);
 	}
    
    if (trigger.isafter && Trigger.isInsert){
    	opportunityhtml.createcase(Trigger.New);
    }
}