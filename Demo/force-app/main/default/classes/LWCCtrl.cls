public class LWCCtrl {
    @AuraEnabled(cacheable=true)
	public static List<Contact> fetchContact(Id accountId){
        List<Contact> contactList = [SELECT Id, Name, Email, Phone FROM Contact WHERE AccountId =: accountId];
        system.debug('contactList----'+contactList);
        return contactList;
    }
}