public with sharing class ContactData {
    @AuraEnabled(cacheable=true)
    public static List<Account> getContacts(String accId) {
        String master_number = [SELECT Master_account_number__c from Account where Id = :accId].Master_account_number__c;
        if (master_number == '')
        {  
            return null;
            }
        else {  

        return [SELECT Id, Name from Account where Master_account_number__c = :master_number];
        }
    }
}