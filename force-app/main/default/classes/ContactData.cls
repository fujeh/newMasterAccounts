public with sharing class ContactData {
    @AuraEnabled(cacheable=true)
    public static List<Account> getContacts(String accId) {
        return [SELECT Id, Name from Account where Id = :accId];
    }
}