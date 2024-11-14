trigger ContactTrigger on Contact (before insert,before update,after insert) {
    if(trigger.isBefore && (Trigger.isUpdate || Trigger.isInsert)){
        ContactHelpper.updateContactRecord(Trigger.new);
    }
    if (trigger.isAfter && Trigger.isInsert){
        ContactHelpper.createCaseRecord(Trigger.new);
        
    }
    if (trigger.isAfter && Trigger.isInsert){
        //ContactHelpper.createopportunityRecord(Trigger.new);
 }
     if (trigger.isAfter ){
        ContactHelpper.createopportunitiesRecord(Trigger.new);
     }
}